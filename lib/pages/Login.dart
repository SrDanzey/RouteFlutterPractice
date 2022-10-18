import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:test_flutter/resources/Resource.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController textEmail = TextEditingController();
  TextEditingController textPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    queryLogin() {
      if (textEmail.text == 'Usuario' && textPassword.text == '123') {
        Navigator.of(context).pushReplacementNamed('/home');
      }
      if (textEmail.text == 'admin' && textPassword.text == 'admin') {
        Navigator.of(context).pushReplacementNamed('/area-restrita');
      }
    }

    return Scaffold(
      appBar: Resource().createAppBar('Login', 30, Colors.white),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Resource().createInput(
                'E-mail', false, TextInputType.emailAddress, textEmail),
            Resource()
                .createInput("Senha", true, TextInputType.none, textPassword),
            const SizedBox(height: 30),
            Resource().createButton('Entrar', queryLogin, 50, 200),
          ],
        ),
      ),
    );
  }
}
