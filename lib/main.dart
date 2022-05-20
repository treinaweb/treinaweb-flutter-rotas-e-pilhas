import 'package:flutter/material.dart';
import 'package:rotas_pilha/views/flutter_page.dart';
import 'package:rotas_pilha/views/home_page.dart';
import 'package:rotas_pilha/views/treinaweb.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      onGenerateRoute: (RouteSettings setting) {
        if (setting.name == '/flutter') {
          return MaterialPageRoute(builder: (ctx) => const FlutterPage());
        }

        return null;
      },
      onGenerateInitialRoutes: (route) {
        return [
          MaterialPageRoute(builder: (ctx) => MyHomePage()),
          MaterialPageRoute(builder: (ctx) => TreinawebPage()),
          MaterialPageRoute(builder: (ctx) => FlutterPage()),
        ];
      },
      routes: {
        "/home": (ctx) => MyHomePage(),
        "/treinaweb": (ctx) => const TreinawebPage(),
      },
      theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple)),
    );
  }
}
