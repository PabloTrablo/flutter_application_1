import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/1.0_sarafan_main_screen.dart';
import '1.5_main_online_entry.dart';

// Основная рабочая функция для приложения с переходами
class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromRGBO(255, 255, 255, 1),
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
            selectedItemColor: Color.fromRGBO(29, 58, 161, 1),
            unselectedItemColor: Color.fromRGBO(108, 130, 209, 1),
            backgroundColor: Color.fromRGBO(255, 255, 255, 1)),
      ),

      initialRoute: '/auth', // Начальная страница при запуске
      routes: {
        '/auth': (context) => const SarafanMainScreen(),
        '/main_frame_category': (context) => const MainFrameCategory(),
      },
    );
  }
}
