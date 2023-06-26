import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'hello_provider.g.dart';

@riverpod
String hello(HelloRef ref) {
  return "Hello~!";
}

@riverpod
Future<String> helloAsync(HelloAsyncRef ref) async {
  await Future.delayed(const Duration(milliseconds: 2000));
  return "Hello~!";
}
