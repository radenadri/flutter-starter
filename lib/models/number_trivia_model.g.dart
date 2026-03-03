// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'number_trivia_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_NumberTriviaModel _$NumberTriviaModelFromJson(Map<String, dynamic> json) =>
    _NumberTriviaModel(
      number: (json['number'] as num).toInt(),
      text: json['text'] as String,
      type: json['type'] as String,
      found: json['found'] as bool,
    );

Map<String, dynamic> _$NumberTriviaModelToJson(_NumberTriviaModel instance) =>
    <String, dynamic>{
      'number': instance.number,
      'text': instance.text,
      'type': instance.type,
      'found': instance.found,
    };
