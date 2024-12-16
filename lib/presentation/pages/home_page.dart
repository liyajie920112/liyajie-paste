class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final clipboardItems = ref.watch(clipboardControllerProvider);
    
    return Scaffold(
      body: clipboardItems.when(
        data: (items) => ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) => ClipboardListItem(
            item: items[index],
          ),
        ),
        loading: () => const CircularProgressIndicator(),
        error: (err, stack) => Text('Error: $err'),
      ),
    );
  }
} 