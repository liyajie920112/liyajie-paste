import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'clipboard_item.freezed.dart';
part 'clipboard_item.g.dart';
part 'clipboard_controller.g.dart';

@freezed
class ClipboardItem with _$ClipboardItem {
  const factory ClipboardItem({
    required String id,
    required String content,
    required DateTime timestamp,
    required ClipboardType type, // 文本、图片、文件等
    String? source,              // 来源应用
    @Default(false) bool isPinned,
  }) = _ClipboardItem;
} 