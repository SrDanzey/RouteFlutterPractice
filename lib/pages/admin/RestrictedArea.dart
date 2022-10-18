import 'package:flutter/material.dart';
import 'package:test_flutter/resources/Resource.dart';

class RestrictedArea extends StatefulWidget {
  const RestrictedArea({super.key});

  @override
  State<RestrictedArea> createState() => _RestrictedAreaState();
}

class _RestrictedAreaState extends State<RestrictedArea> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Resource().createAppBar('Area restrita', 30, Colors.white),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Resource().createButtonRouteIcon(
                'Criar cliente',
                Icons.people_alt_rounded,
                300,
                100,
                context,
                '/area-restrita/criar-cliente'),
            const SizedBox(height: 30),
            Resource().createButtonRouteIcon(
                'Criar Produto',
                Icons.add_shopping_cart_sharp,
                300,
                100,
                context,
                '/area-restrita/criar-produto')
          ],
        ),
      ),
    );
  }
}
