// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'clipboard_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ClipboardItem {
  String get id => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  DateTime get timestamp => throw _privateConstructorUsedError;
  ClipboardType get type => throw _privateConstructorUsedError; // 文本、图片、文件等
  String? get source => throw _privateConstructorUsedError; // 来源应用
  bool get isPinned => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ClipboardItemCopyWith<ClipboardItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClipboardItemCopyWith<$Res> {
  factory $ClipboardItemCopyWith(
          ClipboardItem value, $Res Function(ClipboardItem) then) =
      _$ClipboardItemCopyWithImpl<$Res, ClipboardItem>;
  @useResult
  $Res call(
      {String id,
      String content,
      DateTime timestamp,
      ClipboardType type,
      String? source,
      bool isPinned});
}

/// @nodoc
class _$ClipboardItemCopyWithImpl<$Res, $Val extends ClipboardItem>
    implements $ClipboardItemCopyWith<$Res> {
  _$ClipboardItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? content = null,
    Object? timestamp = null,
    Object? type = freezed,
    Object? source = freezed,
    Object? isPinned = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ClipboardType,
      source: freezed == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String?,
      isPinned: null == isPinned
          ? _value.isPinned
          : isPinned // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ClipboardItemImplCopyWith<$Res>
    implements $ClipboardItemCopyWith<$Res> {
  factory _$$ClipboardItemImplCopyWith(
          _$ClipboardItemImpl value, $Res Function(_$ClipboardItemImpl) then) =
      __$$ClipboardItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String content,
      DateTime timestamp,
      ClipboardType type,
      String? source,
      bool isPinned});
}

/// @nodoc
class __$$ClipboardItemImplCopyWithImpl<$Res>
    extends _$ClipboardItemCopyWithImpl<$Res, _$ClipboardItemImpl>
    implements _$$ClipboardItemImplCopyWith<$Res> {
  __$$ClipboardItemImplCopyWithImpl(
      _$ClipboardItemImpl _value, $Res Function(_$ClipboardItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? content = null,
    Object? timestamp = null,
    Object? type = freezed,
    Object? source = freezed,
    Object? isPinned = null,
  }) {
    return _then(_$ClipboardItemImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ClipboardType,
      source: freezed == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String?,
      isPinned: null == isPinned
          ? _value.isPinned
          : isPinned // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ClipboardItemImpl implements _ClipboardItem {
  const _$ClipboardItemImpl(
      {required this.id,
      required this.content,
      required this.timestamp,
      required this.type,
      this.source,
      this.isPinned = false});

  @override
  final String id;
  @override
  final String content;
  @override
  final DateTime timestamp;
  @override
  final ClipboardType type;
// 文本、图片、文件等
  @override
  final String? source;
// 来源应用
  @override
  @JsonKey()
  final bool isPinned;

  @override
  String toString() {
    return 'ClipboardItem(id: $id, content: $content, timestamp: $timestamp, type: $type, source: $source, isPinned: $isPinned)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClipboardItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            (identical(other.source, source) || other.source == source) &&
            (identical(other.isPinned, isPinned) ||
                other.isPinned == isPinned));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, content, timestamp,
      const DeepCollectionEquality().hash(type), source, isPinned);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClipboardItemImplCopyWith<_$ClipboardItemImpl> get copyWith =>
      __$$ClipboardItemImplCopyWithImpl<_$ClipboardItemImpl>(this, _$identity);
}

abstract class _ClipboardItem implements ClipboardItem {
  const factory _ClipboardItem(
      {required final String id,
      required final String content,
      required final DateTime timestamp,
      required final ClipboardType type,
      final String? source,
      final bool isPinned}) = _$ClipboardItemImpl;

  @override
  String get id;
  @override
  String get content;
  @override
  DateTime get timestamp;
  @override
  ClipboardType get type;
  @override // 文本、图片、文件等
  String? get source;
  @override // 来源应用
  bool get isPinned;
  @override
  @JsonKey(ignore: true)
  _$$ClipboardItemImplCopyWith<_$ClipboardItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
