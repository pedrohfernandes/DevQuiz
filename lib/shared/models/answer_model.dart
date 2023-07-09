import 'dart:convert';

class AnswerModel {
  final String title;
  final bool isRight;

  AnswerModel({
    required this.title,
    this.isRight = false,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'title': title,
      'isRight': isRight,
    };
  }

  factory AnswerModel.fromMap(Map<String, dynamic> map) {
    return AnswerModel(
      title: map['title'] as String,
      isRight: map['isRight'] ?? false,
    );
  }

  String toJson() => json.encode(toMap());

  factory AnswerModel.fromJson(String source) =>
      AnswerModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
