import 'package:rotas_pilha/service.dart';
import 'package:rotas_pilha/userMode.dart';

class CadastroController {
  final UserService _userService = UserService();

  List<User> addUser({required String nome, required String idade}) {
    return _userService.addUser(name: nome, idade: idade);
  }
}
