import 'package:flutter/material.dart';
import 'package:preferenc_user/providers/theme_provider.dart';
import 'package:preferenc_user/screens/screens.dart';
import 'package:preferenc_user/share_preferences/preferences.dart';
import 'package:preferenc_user/widgets/widgets.dart';
import 'package:preferenc_user/widgets/zoom_drawer.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Preferences.init();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ThemeProvider(isDarkMode: Preferences.isDarkMode))
      ],
      child: const MyApp(),)
  );
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'DrawerZ',
      routes: {
        HomeScreen.routerName:(_) => const HomeScreen(),
        SettingsScreen.routerName:(_) => const SettingsScreen(),
        'Drawer':(_) => const CustomDrawer(),
        'DrawerZ':(context) => const MyHomePage() 
      },
      theme: Provider.of<ThemeProvider>(context).currentTheme,
    );
  }
}