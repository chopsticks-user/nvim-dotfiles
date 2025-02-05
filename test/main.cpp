#include <concepts>
#include <iostream>
#include <ranges>
#include <vector>

auto vec() -> std::vector<int> { return {}; }

constexpr auto test() -> int { return 5; }

int main(int argc, char **argv) {
  std::cout << "hello\n";
  return 0;
}
