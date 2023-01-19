class Globals {
  static late String title;
  static late String thought;
  static late String SelectTime;

  static List<Data> data = [];
}

class Data {
  late String? title;
  late String? thought;
  late String? SelectTime;

  Data({
    required this.title,
    required this.thought,
    required this.SelectTime,
  });
}
