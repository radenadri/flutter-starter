// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'number_trivia_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$NumberTriviaModel {

 int get number; String get text; String get type; bool get found;
/// Create a copy of NumberTriviaModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NumberTriviaModelCopyWith<NumberTriviaModel> get copyWith => _$NumberTriviaModelCopyWithImpl<NumberTriviaModel>(this as NumberTriviaModel, _$identity);

  /// Serializes this NumberTriviaModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NumberTriviaModel&&(identical(other.number, number) || other.number == number)&&(identical(other.text, text) || other.text == text)&&(identical(other.type, type) || other.type == type)&&(identical(other.found, found) || other.found == found));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,number,text,type,found);

@override
String toString() {
  return 'NumberTriviaModel(number: $number, text: $text, type: $type, found: $found)';
}


}

/// @nodoc
abstract mixin class $NumberTriviaModelCopyWith<$Res>  {
  factory $NumberTriviaModelCopyWith(NumberTriviaModel value, $Res Function(NumberTriviaModel) _then) = _$NumberTriviaModelCopyWithImpl;
@useResult
$Res call({
 int number, String text, String type, bool found
});




}
/// @nodoc
class _$NumberTriviaModelCopyWithImpl<$Res>
    implements $NumberTriviaModelCopyWith<$Res> {
  _$NumberTriviaModelCopyWithImpl(this._self, this._then);

  final NumberTriviaModel _self;
  final $Res Function(NumberTriviaModel) _then;

/// Create a copy of NumberTriviaModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? number = null,Object? text = null,Object? type = null,Object? found = null,}) {
  return _then(_self.copyWith(
number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as int,text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,found: null == found ? _self.found : found // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [NumberTriviaModel].
extension NumberTriviaModelPatterns on NumberTriviaModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NumberTriviaModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NumberTriviaModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NumberTriviaModel value)  $default,){
final _that = this;
switch (_that) {
case _NumberTriviaModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NumberTriviaModel value)?  $default,){
final _that = this;
switch (_that) {
case _NumberTriviaModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int number,  String text,  String type,  bool found)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NumberTriviaModel() when $default != null:
return $default(_that.number,_that.text,_that.type,_that.found);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int number,  String text,  String type,  bool found)  $default,) {final _that = this;
switch (_that) {
case _NumberTriviaModel():
return $default(_that.number,_that.text,_that.type,_that.found);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int number,  String text,  String type,  bool found)?  $default,) {final _that = this;
switch (_that) {
case _NumberTriviaModel() when $default != null:
return $default(_that.number,_that.text,_that.type,_that.found);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NumberTriviaModel implements NumberTriviaModel {
  const _NumberTriviaModel({required this.number, required this.text, required this.type, required this.found});
  factory _NumberTriviaModel.fromJson(Map<String, dynamic> json) => _$NumberTriviaModelFromJson(json);

@override final  int number;
@override final  String text;
@override final  String type;
@override final  bool found;

/// Create a copy of NumberTriviaModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NumberTriviaModelCopyWith<_NumberTriviaModel> get copyWith => __$NumberTriviaModelCopyWithImpl<_NumberTriviaModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NumberTriviaModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NumberTriviaModel&&(identical(other.number, number) || other.number == number)&&(identical(other.text, text) || other.text == text)&&(identical(other.type, type) || other.type == type)&&(identical(other.found, found) || other.found == found));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,number,text,type,found);

@override
String toString() {
  return 'NumberTriviaModel(number: $number, text: $text, type: $type, found: $found)';
}


}

/// @nodoc
abstract mixin class _$NumberTriviaModelCopyWith<$Res> implements $NumberTriviaModelCopyWith<$Res> {
  factory _$NumberTriviaModelCopyWith(_NumberTriviaModel value, $Res Function(_NumberTriviaModel) _then) = __$NumberTriviaModelCopyWithImpl;
@override @useResult
$Res call({
 int number, String text, String type, bool found
});




}
/// @nodoc
class __$NumberTriviaModelCopyWithImpl<$Res>
    implements _$NumberTriviaModelCopyWith<$Res> {
  __$NumberTriviaModelCopyWithImpl(this._self, this._then);

  final _NumberTriviaModel _self;
  final $Res Function(_NumberTriviaModel) _then;

/// Create a copy of NumberTriviaModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? number = null,Object? text = null,Object? type = null,Object? found = null,}) {
  return _then(_NumberTriviaModel(
number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as int,text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,found: null == found ? _self.found : found // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
