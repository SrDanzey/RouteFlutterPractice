import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:test_flutter/resources/Resource.dart';

class ListProduct extends StatefulWidget {
  const ListProduct({super.key});

  @override
  State<ListProduct> createState() => _ListProductState();
}

class _ListProductState extends State<ListProduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Resource().createAppBar('Melancia', 30, Colors.white),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 50, 10, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Resource().createContainerWithImage(Colors.deepPurpleAccent),
            const SizedBox(height: 5),
            Resource()
                .createDescription(const Color.fromARGB(255, 231, 231, 231)),
          ],
        ),
      ),
    );
  }
}
