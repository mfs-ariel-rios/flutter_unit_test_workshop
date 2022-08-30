import 'dart:convert';

class Student {
  Student({
    required this.name,
  });

  final String name;

  factory Student.fromRawJson(String str) => Student.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Student.fromJson(Map<String, dynamic> json) => Student(
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
      };
}
