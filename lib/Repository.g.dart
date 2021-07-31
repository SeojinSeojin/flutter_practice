// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Repository.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Repository _$RepositoryFromJson(Map<String, dynamic> json) {
  return Repository(
    name: json['name'] as String,
    url: json['url'] as String,
  );
}

Map<String, dynamic> _$RepositoryToJson(Repository instance) =>
    <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };
