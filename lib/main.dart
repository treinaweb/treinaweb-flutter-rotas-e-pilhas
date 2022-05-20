import 'package:flutter/material.dart';
import 'package:rotas_pilha/cadastro.dart';
import 'package:rotas_pilha/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: (RouteSettings setting) {
        if (setting.name == '/cadastro') {
          return MaterialPageRoute(
            builder: (ctx) => CdastroView(),
          );
        }
        return null;
      },
      routes: {
        "/home": (ctx) => const HomeView(),
      },
      initialRoute: '/home',
    );
  }
}
