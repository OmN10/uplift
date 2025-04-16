class Example1 {
  String? id;
  String? title;
  String? file;

  Example1({this.id, this.title, this.file});

  Example1.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    title = json["title"];
    file = json["file"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["title"] = title;
    _data["file"] = file;
    return _data;
  }

  static List<Example1> getMusics(List data1) {
    return data1.map((e) => Example1.fromJson(e)).toList();
  }
}
