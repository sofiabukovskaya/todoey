class Task {
  final String name;
  final bool isDone;

  Task({required this.name, this.isDone = false});

  void toggleDone() {
    isDone != isDone;
  }
}
