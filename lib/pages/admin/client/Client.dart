import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:test_flutter/resources/Resource.dart';

class Client extends StatefulWidget {
  const Client({super.key});

  @override
  State<Client> createState() => _ClientState();
}

class _ClientState extends State<Client> {
  createCliente() {
    print('Cliente criado');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          Resource().createAppBar('Area restrita - Cliente', 30, Colors.white),
      body: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Resource().createInput(
                'Nome do Cliente', false, TextInputType.text, null),
            Resource().createInput(
                'E-mail do cliente', false, TextInputType.emailAddress, null),
            Resource().createInput(
                'Senha do cliente', false, TextInputType.text, null),
            Resource().createInput(
                'Número do cliente', false, TextInputType.number, null),
            Resource().createButton('Criar Cliente', createCliente, 50, 200),
          ],
        ),
      ),
    );
  }
}
