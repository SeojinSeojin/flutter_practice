import 'package:json_annotation/json_annotation.dart';

part 'Actor.g.dart';

@JsonSerializable()
class Actor {
  final String id;
  final String login;
  final String displayLogin;
  final String gravatarId;
  final String url;
  final String avatarUrl;

  Actor(
      {required this.id,
      required this.login,
      required this.displayLogin,
      required this.gravatarId,
      required this.url,
      required this.avatarUrl});

  factory Actor.fromJson(Map<String, dynamic> json) => _$ActorFromJson(json);

  Map<String, dynamic> toJson() => _$ActorToJson(this);
}
