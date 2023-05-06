void main(List<String> arguments) {
  List<int> fibonacci(int n) {
    List<int> sequence = List<int>.filled(n, 0);
    sequence[0] = 0;
    if (n > 1) {
      sequence[1] = 1;
      for (int i = 2; i < n; i++) {
        sequence[i] = sequence[i - 1] + sequence[i - 2];
      }
    }
    return sequence;
  }

  List<int> fib = fibonacci(20);
  for (int i = 0; i < fib.length; i++) {
    print(fib[i]);
  }
}
