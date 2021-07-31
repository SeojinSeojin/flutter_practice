// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'GithubEvent.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GithubEvent _$GithubEventFromJson(Map<String, dynamic> json) {
  return GithubEvent(
    type: json['type'] as String,
    repo: Repository.fromJson(json['repo'] as Map<String, dynamic>),
    createdAt: json['created_at'] as String,
  );
}

Map<String, dynamic> _$GithubEventToJson(GithubEvent instance) =>
    <String, dynamic>{
      'type': instance.type,
      'repo': instance.repo,
      'createdAt': instance.createdAt,
    };
