
class Example {
    String? id;
    String? image;
    String? thumbImage;

    Example({this.id, this.image, this.thumbImage});

    Example.fromJson(Map<String, dynamic> json) {
        id = json["id"];
        image = json["image"];
        thumbImage = json["thumb_image"];
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        _data["id"] = id;
        _data["image"] = image;
        _data["thumb_image"] = thumbImage;
        return _data;
    }
    static List<Example> getImages(List data) {
    return data.map((e) => Example.fromJson(e)).toList();
  }
     }
  

