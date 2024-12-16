void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  // 初始化窗口管理器
  await windowManager.ensureInitialized();
  await windowManager.setSize(const Size(800, 600));
  
  // 初始化系统托盘
  await TrayManagerUtils.initializeTray();
  
  runApp(
    ProviderScope(
      child: MyApp(),
    ),
  );
} 