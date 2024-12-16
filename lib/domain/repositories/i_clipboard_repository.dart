abstract class IClipboardRepository {
  Future<void> saveItem(ClipboardItem item);
  Future<List<ClipboardItem>> getItems();
  Future<void> deleteItem(String id);
  Future<void> pinItem(String id);
  Stream<List<ClipboardItem>> watchItems();
} 