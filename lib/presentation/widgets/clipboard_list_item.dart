class ClipboardListItem extends StatelessWidget {
  final ClipboardItem item;

  const ClipboardListItem({
    super.key,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(_getIconForType(item.type)),
        title: Text(
          item.content,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        subtitle: Text(
          _formatTimestamp(item.timestamp),
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (item.isPinned)
              const Icon(Icons.push_pin, size: 16),
            IconButton(
              icon: const Icon(Icons.copy),
              onPressed: () => _copyToClipboard(item.content),
            ),
          ],
        ),
      ),
    );
  }

  IconData _getIconForType(ClipboardType type) {
    switch (type) {
      case ClipboardType.text:
        return Icons.text_fields;
      case ClipboardType.image:
        return Icons.image;
      case ClipboardType.file:
        return Icons.file_present;
      case ClipboardType.richText:
        return Icons.text_format;
    }
  }

  String _formatTimestamp(DateTime timestamp) {
    return '${timestamp.hour}:${timestamp.minute.toString().padLeft(2, '0')}';
  }

  Future<void> _copyToClipboard(String content) async {
    await Clipboard.setData(ClipboardData(text: content));
  }
} 