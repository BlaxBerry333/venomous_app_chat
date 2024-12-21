import 'dart:async';

// Example
// custom_utils.Debounce(delay: const Duration(milliseconds: 0)).call(() => print("Hello"));
class Debounce {
  final Duration delay;

  Timer? _timer;

  Debounce({required this.delay});

  void call(void Function() callback) {
    _timer?.cancel();

    _timer = Timer(delay, () {
      callback();
    });
  }
}
