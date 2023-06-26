// ignore_for_file: prefer_const_constructors

import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'models/task.dart';

part 'task_provider.g.dart';

@riverpod
List<Task> tasks(TasksRef ref) {
  return [
    Task(title: "title1", description: "description1"),
    Task(title: "title2", description: "description2"),
    Task(title: "title3", description: "description3"),
  ];
}
