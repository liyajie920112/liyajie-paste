class TrayManagerUtils {
  static Future<void> initializeTray() async {
    await trayManager.setIcon(
      Platform.isWindows
          ? 'assets/app_icon.ico'
          : 'assets/app_icon.png',
    );
    
    final menu = Menu(
      items: [
        MenuItem(label: '显示'),
        MenuItem(label: '退出'),
      ],
    );
    
    await trayManager.setContextMenu(menu);
  }
} 