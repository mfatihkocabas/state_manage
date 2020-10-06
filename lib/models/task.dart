
class Task {
  void toggleDone() {
    isDone = !isDone;
  }


  final String name;
  bool isDone;

  Task({this.name, this.isDone = false});




}