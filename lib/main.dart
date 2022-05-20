import 'package:flutter/material.dart';
import 'package:rotas_pilha/cadastro.dart';
import 'package:rotas_pilha/home.dart';
import 'package:rotas_pilha/userMode.dart';

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
          final user = setting.arguments as User?;
          return MaterialPageRoute(
            builder: (ctx) => CdastroView(user: user),
          );
        }
      },
      routes: {
        "/home": (ctx) => const HomeView(),
      },
      initialRoute: '/home',
    );
  }
}
