import 'package:flutter/material.dart';
import 'package:rotas_pilha/views/treinaweb.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);

  var count = ValueNotifier(0);

  setCount() {
    count.value++;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedBuilder(
              animation: count,
              builder: (ctx, child) {
                return Text(
                  count.value.toString(),
                  style: const TextStyle(fontSize: 30),
                );
              },
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              child: OutlinedButton(
                onPressed: () {
                  setCount();
                },
                child: const Text('ADD VALUE'),
              ),
            ),
            const Text(
              'Home Page',
              style: TextStyle(fontSize: 30),
            ),
            const SizedBox(
              height: 50,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              child: OutlinedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/treinaweb', arguments: count);
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
