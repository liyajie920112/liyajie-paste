import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'clipboard_controller.g.dart';

@riverpod
class ClipboardController extends _$ClipboardController {
  late final IClipboardRepository _repository;
  late final ClipboardService _clipboardService;
  StreamSubscription? _clipboardSubscription;
  
  @override
  Stream<List<ClipboardItem>> build() {
    _repository = ref.read(clipboardRepositoryProvider);
    _clipboardService = ref.read(clipboardServiceProvider);
    
    // 启动剪贴板监听
    _startMonitoring();
    
    return _repository.watchItems();
  }
  
  Future<void> _startMonitoring() async {
    _clipboardService.startListening();
    _clipboardSubscription = _clipboardService.clipboardStream.listen((item) {
      _handleNewClipboardItem(item);
    });
  }
  
  Future<void> _handleNewClipboardItem(ClipboardItem item) async {
    try {
      await _repository.saveItem(item);
    } catch (e) {
      print('Error saving clipboard item: $e');
    }
  }
  
  @override
  void dispose() {
    _clipboardSubscription?.cancel();
    _clipboardService.dispose();
    super.dispose();
  }
} 