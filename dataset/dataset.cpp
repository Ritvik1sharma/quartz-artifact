#include "dataset.h"

#include <fstream>

int Dataset::num_hash_values() const {
  return (int) dataset.size();
}

int Dataset::num_total_dags() const {
  int ret = 0;
  for (const auto &it : dataset) {
    ret += it.second.size();
  }
  return ret;
}

bool Dataset::save_json(const std::string &file_name) const {
  std::ofstream fout;
  fout.open(file_name, std::ofstream::out);
  if (!fout.is_open()) {
    return false;
  }
  fout << "{" << std::endl;
  bool start0 = true;
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
  return true;
}
