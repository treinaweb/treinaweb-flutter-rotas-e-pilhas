import 'package:flutter/material.dart';
import 'package:rotas_pilha/views/flutter_page.dart';

class TreinawebPage extends StatelessWidget {
  const TreinawebPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Treinaweb Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Treinaweb Page',
              style: TextStyle(fontSize: 30),
            ),
            const SizedBox(
              height: 50,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              child: OutlinedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/flutter');
                },
                child: const Text('Aceesar'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
