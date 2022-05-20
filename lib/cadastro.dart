import 'package:flutter/material.dart';
import 'package:rotas_pilha/controller.dart';

class CdastroView extends StatelessWidget {
  CdastroView({Key? key}) : super(key: key);

  final controller = CadastroController();
  final nameController = TextEditingController();
  final idadeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cadastro'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    TextField(
                      controller: nameController,
                      decoration: const InputDecoration(
                        label: Text('Name'),
                      ),
                    ),
                    TextField(
                      keyboardType: TextInputType.number,
                      controller: idadeController,
                      decoration: const InputDecoration(
                        label: Text('Idade'),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              OutlinedButton(
                onPressed: () {
                  final listUsers = controller.addUser(
                      nome: nameController.text, idade: idadeController.text);

                  Navigator.of(context).pushNamedAndRemoveUntil(
                      '/home', (route) => false,
                      arguments: listUsers);
                },
                child: const Text('Cadastrar'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
