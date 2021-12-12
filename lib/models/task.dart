class Task {
  late final String _name;
  bool _isDone = false;

  Task(this._name);

  void toggleDone() {
    _isDone = !_isDone;
  }

  String get name {
    return _name;
  }

  bool get isDone {
    return _isDone;
  }
}
