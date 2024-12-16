class ClipboardRepository implements IClipboardRepository {
  final List<ClipboardItem> _items = [];
  final _controller = StreamController<List<ClipboardItem>>.broadcast();

  @override
  Future<void> saveItem(ClipboardItem item) async {
    _items.insert(0, item);
    if (_items.length > 100) { // 限制存储数量
      _items.removeLast();
    }
    _controller.add(_items);
  }

  @override
  Future<List<ClipboardItem>> getItems() async {
    return _items;
  }

  @override
  Future<void> deleteItem(String id) async {
    _items.removeWhere((item) => item.id == id);
    _controller.add(_items);
  }

  @override
  Future<void> pinItem(String id) async {
    final index = _items.indexWhere((item) => item.id == id);
    if (index != -1) {
      final item = _items[index];
      final pinnedItem = item.copyWith(isPinned: !item.isPinned);
      _items[index] = pinnedItem;
      _controller.add(_items);
    }
  }

  @override
  Stream<List<ClipboardItem>> watchItems() {
    return _controller.stream;
  }

  void dispose() {
    _controller.close();
  }
} 