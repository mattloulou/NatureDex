void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NatureDex',
      theme: ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.green,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/nature-dex': (context) => NatureDexPage(),
        '/plant-view': (context) => PlantViewPage(),
        '/camera': (context) => CameraPage(),
        '/settings': (context) => SettingsPage(),
        '/account': (context) => AccountPage(),
      },
    );
  }
}