import 'package:dars_3_9_uy_ishi/model/lesson.dart';
import 'package:json_annotation/json_annotation.dart';

part 'course.g.dart';

@JsonSerializable()
class Course {

  String title;
  String description;
  String imageUrl;
  int price;
  Map<String, dynamic> lessons;

  Course(
      {
      required this.title,
      required this.description,
      required this.imageUrl,
      required this.price,
      required this.lessons});

  factory Course.fromJson(Map<String, dynamic> json) {
    return _$CourseFromJson(json);
  }

  toJson() {
    return _$CourseToJson(this);
  }
}
