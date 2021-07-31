import 'package:json_annotation/json_annotation.dart';
import 'package:explore_flutter/Repository.dart';

part 'GithubEvent.g.dart';

@JsonSerializable()
class GithubEvent {
  final String type;
  final Repository repo;
  final String createdAt;

  GithubEvent(
      {required this.type,
      required this.repo,
      required this.createdAt});

  factory GithubEvent.fromJson(Map<String, dynamic> json) =>
      _$GithubEventFromJson(json);

  Map<String, dynamic> toJson() => _$GithubEventToJson(this);
}
