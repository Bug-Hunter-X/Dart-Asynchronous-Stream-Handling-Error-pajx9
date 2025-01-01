```dart
import 'dart:async';

Future<void> main() async {
  // This will print 1
  print(await myAsyncFunction(1));

  // This will print 2
  print(await myAsyncFunction(2));

  // This will throw an exception because the stream is closed
  print(await myAsyncFunction(3));
}

Future<int> myAsyncFunction(int value) async {
  final streamController = StreamController<int>();
  Timer(Duration(seconds: 1), () {
    streamController.add(value);
    streamController.close();
  });
  return await streamController.stream.first;
}
```