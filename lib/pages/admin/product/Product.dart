import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:test_flutter/resources/Resource.dart';

class Product extends StatefulWidget {
  const Product({super.key});

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  createProduct() {
    print('criado o produto');
  }

  addImage() {
    print('Idicionando imagem');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          Resource().createAppBar('Area Restrita - Produto', 30, Colors.white),
      body: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Resource().createInput(
                'Nome do produto', false, TextInputType.text, null),
            Resource()
                .createInput('Descrição', false, TextInputType.text, null),
            Resource().createInput('Preço', false, TextInputType.number, null),
            Resource().createButtonIcon(
                'Adicionar Imagem', Icons.image, addImage, 50, 300),
            const SizedBox(height: 20),
            Resource().createButton('Criar Produto', createProduct, 50, 150),
          ],
        ),
      ),
    );
  }
}
