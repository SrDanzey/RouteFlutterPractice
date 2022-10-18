import 'package:flutter/material.dart';
import 'package:test_flutter/resources/Resource.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    listProduct() {
      Navigator.of(context).pushNamed('/home/melancia');
    }

    return Scaffold(
      appBar: Resource().createAppBar('Home', 30, Colors.white),
      body: Wrap(
        alignment: WrapAlignment.spaceAround,
        children: [
          // ignore: prefer_const_constructors
          SizedBox(
            height: 50,
            width: double.infinity,
          ),
          Resource().createText('Listagem de Produtos', 30, Colors.black),
          const SizedBox(
            height: 50,
            width: double.infinity,
          ),
          Resource().createContainerProduct(
            Colors.black,
            listProduct,
          ),
        ],
      ),
    );
  }
}
