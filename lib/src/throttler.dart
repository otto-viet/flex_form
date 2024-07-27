import 'dart:async';

import 'package:flutter/foundation.dart';

/// A throttler to throttle user inputs into a text box.
class Throttler {
  Throttler(this.delay, this.callback);

  /// Amount of time delayed before the next execution starts.
  Duration delay;
  /// Function passed in by caller to allow it to be executed when it's time.
  ValueChanged<dynamic> callback;
  DateTime? lastExecutedOn;

  void throttle([List<dynamic>? args]) {
    void exec() {
      lastExecutedOn = DateTime.now();
      callback(args ?? args);
    }

    if (lastExecutedOn != null) {
      final Duration elapsed =
          DateTime.now().difference(lastExecutedOn as DateTime);

      if (elapsed.compareTo(delay) >= 0) {
        exec();
      }
    }
  }

  void reset() => lastExecutedOn = null;
}

/// A debouncer to control a user inputs into a text box.
class Debouncer {
  Debouncer(this.delay, this.callback, this.args,
      {this.immediateExecute = false,});

  Duration delay;
  ValueChanged<List<dynamic>?> callback;
  List<dynamic>? args;
  bool immediateExecute;
  Timer? timeoutId;

  void debounce([List<dynamic>? args]) {
    void exec() {
      callback(args);
    }

    void clear() {
      timeoutId = null;
    }

    // Cancel the previous timer if debounce is still being called before the
    // delay period is over.
    if (timeoutId != null) {
      timeoutId?.cancel();
    }
    // If atBegin is true, 'exec' has to executed the first time debounce gets
    // called.
    if (immediateExecute && timeoutId == null) {
      exec();
    }
    //schedule a call after delay time
    timeoutId = Timer(delay, immediateExecute ? clear : exec);
  }

  void close() {
    timeoutId?.cancel();
    timeoutId = null;
  }
}
