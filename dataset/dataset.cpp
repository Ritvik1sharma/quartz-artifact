#include "dataset.h"

#include <fstream>
#include <iomanip>

int Dataset::num_hash_values() const {
  return (int) dataset.size();
}

int Dataset::num_total_dags() const {
  int ret = 0;
  for (const auto &it : dataset) {
    ret += (int) it.second.size();
  }
  return ret;
}

bool Dataset::save_json(Context *ctx, const std::string &file_name) const {
  std::ofstream fout;
  fout.open(file_name, std::ofstream::out);
  if (!fout.is_open()) {
    return false;
  }

  fout << "[" << std::endl;

  // The generated parameters for random testing.
  auto all_parameters = ctx->get_all_generated_parameters();
  fout << "[";
  bool start0 = true;
  for (auto &param : all_parameters) {
    if (start0) {
      start0 = false;
    } else {
      fout << ", ";
    }
    fout << std::scientific << std::setprecision(17) << param;
  }
  fout << "]," << std::endl;

  fout << "{" << std::endl;
  start0 = true;
  for (const auto &it : dataset) {
    if (start0) {
      start0 = false;
    } else {
      fout << ",";
    }
    fout << "\"" << std::hex << it.first << "\": [" << std::endl;
    bool start = true;
    for (const auto &dag : it.second) {
      if (start) {
        start = false;
      } else {
        fout << ",";
      }
      fout << dag->to_json();
    }
    fout << "]" << std::endl;
  }
  fout << "}" << std::endl;

  fout << "]" << std::endl;
  return true;
}

bool Dataset::insert(Context *ctx, std::unique_ptr<DAG> dag) {
  const auto hash_value = dag->hash(ctx);
  bool ret = dataset.count(hash_value) == 0;
  dataset[hash_value].push_back(std::move(dag));
  return ret;
}

void Dataset::clear() {
  dataset.clear();
}
