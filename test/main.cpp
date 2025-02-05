#include <concepts>
#include <iostream>
#include <vector>
#include <ranges>

auto vec() -> std::vector<int> {
  return {};
}

constexpr auto test() -> int {
  return 5;
}

int main(int argc, char **argv) {
  std::cout << "hello\n";
  return 0;
}
