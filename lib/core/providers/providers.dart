import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'providers.g.dart';

@riverpod
ClipboardService clipboardService(ClipboardServiceRef ref) {
  final service = ClipboardService();
  ref.onDispose(() => service.dispose());
  return service;
}

@riverpod
IClipboardRepository clipboardRepository(ClipboardRepositoryRef ref) {
  return ClipboardRepository();
} 