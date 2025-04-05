class Example {
  String? id;
  String? title;
  String? description;
  String? image;
  String? thumbImage;

  Example({this.id, this.title, this.description, this.image, this.thumbImage});

  Example.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    title = json["title"];
    description = json["description"];
    image = json["image"];
    thumbImage = json["thumb_image"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["title"] = title;
    _data["description"] = description;
    _data["image"] = image;
    _data["thumb_image"] = thumbImage;
    return _data;
  }

  static List<Example> getStories(List data) {
    return data.map((e) => Example.fromJson(e)).toList();
  }
}
