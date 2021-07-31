import 'package:json_annotation/json_annotation.dart';
import 'package:explore_flutter/Actor.dart';
import 'package:explore_flutter/Repository.dart';

part 'GithubEvent.g.dart';

@JsonSerializable()
class GithubEvent {
  final String type;
  final Actor actor;
  final Repository repo;

  GithubEvent({required this.type, required this.actor, required this.repo});

  factory GithubEvent.fromJson(Map<String, dynamic> json) =>
      _$GithubEventFromJson(json);

  Map<String, dynamic> toJson() => _$GithubEventToJson(this);
}
