import 'package:flutter/material.dart';
import 'package:rotas_pilha/controller.dart';
import 'package:rotas_pilha/userMode.dart';

class CdastroView extends StatelessWidget {
  CdastroView({Key? key, required this.user}) : super(key: key);
  final User? user;
  final controller = CadastroController();
  final nameController = TextEditingController();
  final idadeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    if (user != null) {
      nameController.text = user!.nome;
      idadeController.text = user!.idade.toString();
    }

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
                child: Visibility(
                  visible: user == null,
                  child: const Text('Cadastrar'),
                  replacement: const Text('Editar'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
