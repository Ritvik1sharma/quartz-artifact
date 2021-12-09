#pragma once

#include "../context/context.h"
#include "../generator/generator.h"

#include <chrono>
#include <fstream>

void test_pruning(const std::vector<GateType> &supported_gates,
                  const std::string &file_prefix,
                  int num_qubits,
                  int num_input_parameters,
                  int max_num_quantum_gates,
                  int max_num_param_gates = 1,
                  bool run_representative_pruning = true,
                  bool run_original = true) {
  Context ctx(supported_gates);
  Generator gen(&ctx);

  EquivalenceSet equiv_set;

  Dataset dataset1;
  auto start = std::chrono::steady_clock::now();
  auto end = std::chrono::steady_clock::now();

  if (run_representative_pruning) {
    std::ifstream fin(file_prefix + "pruning_unverified.json");
    if (fin.is_open()) {
      std::cout << "Representative pruning: use generated file." << std::endl;
      fin.close();
    } else {
      start = std::chrono::steady_clock::now();
      gen.generate(num_qubits,
                   num_input_parameters,
                   max_num_quantum_gates, max_num_param_gates,
                   &dataset1, /*verify_equivalences=*/
                   true,
                   &equiv_set, /*verbose=*/
                   true);
      end = std::chrono::steady_clock::now();
      std::cout << std::dec << "Representative pruning: "
                << dataset1.num_total_dags()
                << " circuits with " << dataset1.num_hash_values()
                << " different hash values are found in "
                <<
                (double) std::chrono::duration_cast<std::chrono::milliseconds>(
                    end - start).count() / 1000.0 << " seconds."
                << std::endl;

      std::cout << dataset1.remove_singletons(&ctx) << " singletons removed."
                << std::endl;

      start = std::chrono::steady_clock::now();
      dataset1.save_json(&ctx, file_prefix + "pruning_unverified.json");
      end = std::chrono::steady_clock::now();
      std::cout << std::dec << "Representative pruning: json saved in "
                <<
                (double) std::chrono::duration_cast<std::chrono::milliseconds>(
                    end - start).count() / 1000.0 << " seconds."
                << std::endl;

      dataset1.clear();
    }

    start = std::chrono::steady_clock::now();
    system(
        ("python ../python/verify_equivalences.py " + file_prefix
            + "pruning_unverified.json " + file_prefix
            + "pruning.json").c_str());
    equiv_set.clear();
    equiv_set.load_json(&ctx, file_prefix + "pruning.json");
    end = std::chrono::steady_clock::now();
    std::cout << std::dec << "Representative pruning: there are "
              << equiv_set.num_total_dags()
              << " circuits in " << equiv_set.num_equivalence_classes()
              << " equivalence classes after verification in "
              << (double) std::chrono::duration_cast<std::chrono::milliseconds>(
                  end - start).count() / 1000.0 << " seconds."
              << std::endl;

    start = std::chrono::steady_clock::now();
    equiv_set.simplify(&ctx, /*common_subcircuit_pruning=*/
                       false, /*other_simplification=*/
                       true);
    equiv_set.save_json(file_prefix + "pruning_other_simplification.json");
    end = std::chrono::steady_clock::now();
    std::cout << std::dec << "Representative pruning: there are "
              << equiv_set.num_total_dags()
              << " circuits in " << equiv_set.num_equivalence_classes()
              << " equivalence classes after other simplification in "
              << (double) std::chrono::duration_cast<std::chrono::milliseconds>(
                  end - start).count() / 1000.0 << " seconds."
              << std::endl;

    start = std::chrono::steady_clock::now();
    equiv_set.simplify(&ctx);
    equiv_set.save_json(file_prefix + "pruning_simplified.json");
    end = std::chrono::steady_clock::now();
    std::cout << std::dec << "Representative pruning: there are "
              << equiv_set.num_total_dags()
              << " circuits in " << equiv_set.num_equivalence_classes()
              << " equivalence classes after all simplification in "
              << (double) std::chrono::duration_cast<std::chrono::milliseconds>(
                  end - start).count() / 1000.0 << " seconds."
              << std::endl;

    start = std::chrono::steady_clock::now();
    equiv_set.clear();
    equiv_set.load_json(&ctx, file_prefix + "pruning.json");
    equiv_set.simplify(&ctx, /*common_subcircuit_pruning=*/
                       true, /*other_simplification=*/
                       false);
    equiv_set.save_json(file_prefix + "pruning_only_common_subcircuit.json");
    end = std::chrono::steady_clock::now();
    std::cout << std::dec << "Representative pruning: there are "
              << equiv_set.num_total_dags()
              << " circuits in " << equiv_set.num_equivalence_classes()
              << " equivalence classes after only common subcircuit pruning in "
              << (double) std::chrono::duration_cast<std::chrono::milliseconds>(
                  end - start).count() / 1000.0 << " seconds."
              << std::endl;
  }

  if (run_original) {
    std::ifstream fin(file_prefix + "original_unverified.json");
    if (fin.is_open()) {
      std::cout << "Original: use generated file." << std::endl;
      fin.close();
    } else {
      std::cout << (file_prefix + "original_unverified.json")
                << " not found. Generating..." << std::endl;
      start = std::chrono::steady_clock::now();
      gen.generate_dfs(num_qubits,
                       num_input_parameters,
                       max_num_quantum_gates, max_num_param_gates,
                       dataset1, /*restrict_search_space=*/
                       false);
      end = std::chrono::steady_clock::now();
      std::cout << std::dec << "Original: "
                << dataset1.num_total_dags()
                << " circuits with " << dataset1.num_hash_values()
                << " different hash values are found in "
                <<
                (double) std::chrono::duration_cast<std::chrono::milliseconds>(
                    end - start).count() / 1000.0 << " seconds."
                << std::endl;

      std::cout << dataset1.remove_singletons(&ctx) << " singletons removed."
                << std::endl;

      start = std::chrono::steady_clock::now();
      dataset1.save_json(&ctx, file_prefix + "original_unverified.json");
      end = std::chrono::steady_clock::now();
      std::cout << std::dec << "Original: json saved in "
                <<
                (double) std::chrono::duration_cast<std::chrono::milliseconds>(
                    end - start).count() / 1000.0 << " seconds."
                << std::endl;
    }

    ctx.clear_representatives();
    dataset1.clear();

    start = std::chrono::steady_clock::now();
//    if (num_qubits == 5) {
//      // Do not invoke SMT solver to save time
    system(
        ("python ../python/verify_equivalences.py " + file_prefix
            + "original_unverified.json " + file_prefix
            + "original.json -n").c_str());
//    } else {
//      system(
//          ("python ../python/verify_equivalences.py " + file_prefix
//              + "original_unverified.json " + file_prefix
//              + "original.json").c_str());
//    }
    equiv_set.clear();
    equiv_set.load_json(&ctx, file_prefix + "original.json");
    end = std::chrono::steady_clock::now();
    std::cout << std::dec << "Original: there are "
              << equiv_set.num_total_dags()
              << " circuits in " << equiv_set.num_equivalence_classes()
              << " equivalence classes after verification in "
              << (double) std::chrono::duration_cast<std::chrono::milliseconds>(
                  end - start).count() / 1000.0 << " seconds."
              << std::endl;

    start = std::chrono::steady_clock::now();
    equiv_set.simplify(&ctx, /*common_subcircuit_pruning=*/
                       false, /*other_simplification=*/
                       true);
    equiv_set.save_json(file_prefix + "original_other_simplification.json");
    end = std::chrono::steady_clock::now();
    std::cout << std::dec << "Original: there are "
              << equiv_set.num_total_dags()
              << " circuits in " << equiv_set.num_equivalence_classes()
              << " equivalence classes after other simplification in "
              << (double) std::chrono::duration_cast<std::chrono::milliseconds>(
                  end - start).count() / 1000.0 << " seconds."
              << std::endl;

    start = std::chrono::steady_clock::now();
    equiv_set.simplify(&ctx);
    equiv_set.save_json(file_prefix + "original_simplified.json");
    end = std::chrono::steady_clock::now();
    std::cout << std::dec << "Original: there are "
              << equiv_set.num_total_dags()
              << " circuits in " << equiv_set.num_equivalence_classes()
              << " equivalence classes after all simplification in "
              << (double) std::chrono::duration_cast<std::chrono::milliseconds>(
                  end - start).count() / 1000.0 << " seconds."
              << std::endl;

    start = std::chrono::steady_clock::now();
    equiv_set.clear();
    equiv_set.load_json(&ctx, file_prefix + "original.json");
    equiv_set.simplify(&ctx, /*common_subcircuit_pruning=*/
                       true, /*other_simplification=*/
                       false);
    equiv_set.save_json(file_prefix + "original_only_common_subcircuit.json");
    end = std::chrono::steady_clock::now();
    std::cout << std::dec << "Original: there are "
              << equiv_set.num_total_dags()
              << " circuits in " << equiv_set.num_equivalence_classes()
              << " equivalence classes after only common subcircuit pruning in "
              << (double) std::chrono::duration_cast<std::chrono::milliseconds>(
                  end - start).count() / 1000.0 << " seconds."
              << std::endl;

    system(
        ("python ../python/verify_equivalences.py " + file_prefix
            + "original_unverified.json " + file_prefix
            + "original_verified.json").c_str());
    equiv_set.clear();
    equiv_set.load_json(&ctx, file_prefix + "original_verified.json");
    end = std::chrono::steady_clock::now();
    std::cout << std::dec << "Original verified: there are "
              << equiv_set.num_total_dags()
              << " circuits in " << equiv_set.num_equivalence_classes()
              << " equivalence classes after verification in "
              << (double) std::chrono::duration_cast<std::chrono::milliseconds>(
                  end - start).count() / 1000.0 << " seconds."
              << std::endl;

    start = std::chrono::steady_clock::now();
    equiv_set.simplify(&ctx, /*common_subcircuit_pruning=*/
                       false, /*other_simplification=*/
                       true);
    equiv_set.save_json(
        file_prefix + "original_verified_other_simplification.json");
    end = std::chrono::steady_clock::now();
    std::cout << std::dec << "Original verified: there are "
              << equiv_set.num_total_dags()
              << " circuits in " << equiv_set.num_equivalence_classes()
              << " equivalence classes after other simplification in "
              << (double) std::chrono::duration_cast<std::chrono::milliseconds>(
                  end - start).count() / 1000.0 << " seconds."
              << std::endl;

    start = std::chrono::steady_clock::now();
    equiv_set.simplify(&ctx);
    equiv_set.save_json(file_prefix + "original_verified_simplified.json");
    end = std::chrono::steady_clock::now();
    std::cout << std::dec << "Original verified: there are "
              << equiv_set.num_total_dags()
              << " circuits in " << equiv_set.num_equivalence_classes()
              << " equivalence classes after all simplification in "
              << (double) std::chrono::duration_cast<std::chrono::milliseconds>(
                  end - start).count() / 1000.0 << " seconds."
              << std::endl;

    start = std::chrono::steady_clock::now();
    equiv_set.clear();
    equiv_set.load_json(&ctx, file_prefix + "original.json");
    equiv_set.simplify(&ctx, /*common_subcircuit_pruning=*/
                       true, /*other_simplification=*/
                       false);
    equiv_set.save_json(
        file_prefix + "original_verified_only_common_subcircuit.json");
    end = std::chrono::steady_clock::now();
    std::cout << std::dec << "Original verified: there are "
              << equiv_set.num_total_dags()
              << " circuits in " << equiv_set.num_equivalence_classes()
              << " equivalence classes after only common subcircuit pruning in "
              << (double) std::chrono::duration_cast<std::chrono::milliseconds>(
                  end - start).count() / 1000.0 << " seconds."
              << std::endl;
  }
}
