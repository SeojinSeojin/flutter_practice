// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'GithubEvent.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GithubEvent _$GithubEventFromJson(Map<String, dynamic> json) {
  return GithubEvent(
    type: json['type'] as String,
    actor: Actor.fromJson(json['actor'] as Map<String, dynamic>),
    repo: Repository.fromJson(json['repo'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$GithubEventToJson(GithubEvent instance) =>
    <String, dynamic>{
      'type': instance.type,
      'actor': instance.actor,
      'repo': instance.repo,
    };
