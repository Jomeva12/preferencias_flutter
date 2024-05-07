import 'package:flutter/material.dart';
import 'package:preferencias_flutter/preferencias/preferencias.dart';
import 'package:preferencias_flutter/provider/theme_provider.dart';
import 'package:preferencias_flutter/screen/screen.dart';
import 'package:preferencias_flutter/screen/settting_screen.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
await Preferencias.init();
  runApp(
      MultiProvider(providers: [
        ChangeNotifierProvider(create: (context) => ThemeProvider(isDarkmode: Preferencias.isDarkmode),)
      ],
      child: MyApp())

  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,

        title: 'Material App',
        initialRoute: HomeScreen.routeName,
        routes: {
          HomeScreen.routeName:(_) => HomeScreen(),
          SettingScreen.routeName:(_) => SettingScreen(),
        },
        theme: Provider.of<ThemeProvider>(context).currentTheme,
      );
   
  }
}
