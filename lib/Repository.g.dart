// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Repository.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Repository _$RepositoryFromJson(Map<String, dynamic> json) {
  return Repository(
    id: json['id'] as String,
    name: json['name'] as String,
    url: json['url'] as String,
  );
}

Map<String, dynamic> _$RepositoryToJson(Repository instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'url': instance.url,
    };
