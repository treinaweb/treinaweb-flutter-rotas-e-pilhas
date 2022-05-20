import 'package:flutter/material.dart';
import 'package:rotas_pilha/views/home_page.dart';

class FlutterPage extends StatelessWidget {
  const FlutterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Flutter page',
              style: TextStyle(fontSize: 30),
            ),
            const SizedBox(
              height: 50,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              child: OutlinedButton(
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (ctx) => const FlutterPage(),
                    ),
                    (route) => true,
                  );
                },
                child: const Text('Acessar'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
