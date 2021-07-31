// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Actor.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Actor _$ActorFromJson(Map<String, dynamic> json) {
  return Actor(
    id: json['id'] as String,
    login: json['login'] as String,
    displayLogin: json['displayLogin'] as String,
    gravatarId: json['gravatarId'] as String,
    url: json['url'] as String,
    avatarUrl: json['avatarUrl'] as String,
  );
}

Map<String, dynamic> _$ActorToJson(Actor instance) => <String, dynamic>{
      'id': instance.id,
      'login': instance.login,
      'displayLogin': instance.displayLogin,
      'gravatarId': instance.gravatarId,
      'url': instance.url,
      'avatarUrl': instance.avatarUrl,
    };
