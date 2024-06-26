import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:teste_mobile/controllers/folder.controller.dart';
import 'package:teste_mobile/controllers/user.controller.dart';
import 'package:teste_mobile/routes/routes.dart';
import 'package:teste_mobile/views/auth.view.dart';
import 'package:teste_mobile/views/home.view.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => FolderController()),
      ChangeNotifierProvider(create: (context) => UserController()),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: const ColorScheme.light(
          primary: Colors.white,
          secondary: Colors.pink,
          background: Colors.pink,
          surface: Colors.pink,
          error: Colors.yellow,
        ),
        textTheme: const TextTheme(
          bodyMedium:
              TextStyle(color: Colors.pink), // cor da fonte do widget text
        ),
        useMaterial3: true,
      ),
      routes: {
        AppRoutes.AUTH_PAGE: (ctx) => const AuthPage(),
        AppRoutes.HOME_PAGE: (ctx) => const HomePage(),
      },
    );
  }
}
