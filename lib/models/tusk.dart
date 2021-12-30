// To parse this JSON data, do
//
//     final tusk = tuskFromJson(jsonString);

import 'dart:convert';

Tusk tuskFromJson(String str) => Tusk.fromJson(json.decode(str));

String tuskToJson(Tusk data) => json.encode(data.toJson());

class Tusk {
  List<String> colors;
  List<Question> questions;

  Tusk({
    required this.colors,
    required this.questions,
  });

  factory Tusk.fromJson(Map<String, dynamic> json) => Tusk(
        colors: List<String>.from(json["colors"].map((x) => x)),
        questions: List<Question>.from(
            json["questions"].map((x) => Question.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "colors": List<dynamic>.from(colors.map((x) => x)),
        "questions": List<dynamic>.from(questions.map((x) => x.toJson())),
      };
}

class Question {
  Question({
    required this.total,
    required this.text,
    required this.chartData,
  });

  int total;
  String text;
  List<ChartDatum> chartData;

  factory Question.fromJson(Map<String, dynamic> json) => Question(
        total: json["total"],
        text: json["text"],
        chartData: List<ChartDatum>.from(
            json["chartData"].map((x) => ChartDatum.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "total": total,
        "text": text,
        "chartData": List<dynamic>.from(chartData.map((x) => x.toJson())),
      };
}

class ChartDatum {
  ChartDatum({
    required this.text,
    required this.percetnage,
  });

  String text;
  int percetnage;

  factory ChartDatum.fromJson(Map<String, dynamic> json) => ChartDatum(
        text: json["text"],
        percetnage: json["percetnage"],
      );

  Map<String, dynamic> toJson() => {
        "text": text,
        "percetnage": percetnage,
      };
}
