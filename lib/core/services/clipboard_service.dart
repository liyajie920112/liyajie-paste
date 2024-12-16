import 'dart:async';
import 'package:flutter/services.dart';

class ClipboardService {
  static const Duration _checkInterval = Duration(milliseconds: 500);
  Timer? _timer;
  String? _lastContent;
  final _clipboardController = StreamController<ClipboardItem>.broadcast();

  Stream<ClipboardItem> get clipboardStream => _clipboardController.stream;

  void startListening() {
    _timer?.cancel();
    _timer = Timer.periodic(_checkInterval, (_) => _checkClipboard());
  }

  void stopListening() {
    _timer?.cancel();
    _timer = null;
  }

  Future<void> _checkClipboard() async {
    try {
      final hasData = await Clipboard.hasStrings();
      if (!hasData) return;

      final content = await Clipboard.getData(Clipboard.kTextPlain);
      final text = content?.text;
      
      if (text != null && text != _lastContent) {
        _lastContent = text;
        
        final newItem = ClipboardItem(
          id: DateTime.now().millisecondsSinceEpoch.toString(),
          content: text,
          timestamp: DateTime.now(),
          type: ClipboardType.text,
        );

        _clipboardController.add(newItem);
      }
    } catch (e) {
      print('Error checking clipboard: $e');
    }
  }

  void dispose() {
    stopListening();
    _clipboardController.close();
  }
} 