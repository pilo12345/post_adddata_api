import 'dart:convert';

List<Search1> search1FromJson(String str) =>
    List<Search1>.from(json.decode(str).map((x) => Search1.fromJson(x)));

String search1ToJson(List<Search1> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Search1 {
  Search1({
    this.userId,
    this.id,
    this.title,
    this.body,
  });

  int? userId;
  int? id;
  String? title;
  String? body;

  factory Search1.fromJson(Map<String, dynamic> json) => Search1(
        userId: json["userId"],
        id: json["id"],
        title: json["title"],
        body: json["body"],
      );

  Map<String, dynamic> toJson() => {
        "userId": userId,
        "id": id,
        "title": title,
        "body": body,
      };
}
