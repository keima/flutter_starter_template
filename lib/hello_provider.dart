import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'hello_provider.g.dart';

@riverpod
String hello(HelloRef ref) {
  return "Hello~!";
}
