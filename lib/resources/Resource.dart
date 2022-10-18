import 'package:flutter/material.dart';

class Resource {
  createAppBar(title, size, color) {
    return AppBar(
      title: createText(title, size, color),
      centerTitle: true,
    );
  }

  createContainerProduct(color, function) {
    return Container(
      height: 200,
      width: 350,
      child: Wrap(
        children: [
          Container(
            width: 350,
            height: 50,
            color: Colors.blue,
            child: Row(
              children: [
                const SizedBox(width: 10),
                Resource().createText("Preço: 80,00 reais", 20, Colors.white),
                const SizedBox(
                  width: 40,
                ),
                ElevatedButton.icon(
                  onPressed: function,
                  icon: const Icon(Icons.add, size: 18),
                  label: const Text("Detalhes"),
                ),
              ],
            ),
          ),
          Image.asset('assets/images/imagem.jpg'),
        ],
      ),
    );
  }

  createContainerWithImage(color) {
    return Container(
      color: color,
      width: 320,
      height: 250,
      child: const Image(
        image: AssetImage('assets/images/imagem.jpg'),
        fit: BoxFit.fitWidth,
        width: 320,
        height: double.infinity,
      ),
    );
  }

  createDescription(color) {
    return Container(
      color: color,
      width: 320,
      height: 150,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
        child: Column(
          children: [
            Resource().createText(
                'Uma melancia em seu auge de glória, toda vermalha e poderosa para se degustar com todo o sabor que uma pode te proposionar',
                18,
                Colors.black),
            const SizedBox(height: 10),
            Resource().createText('Preço: 80,00 reais', 30, Colors.black)
          ],
        ),
      ),
    );
  }

  createText(content, size, color) {
    return Text(
      content,
      style: TextStyle(
        fontSize: size,
        color: color,
      ),
    );
  }

  createInput(title, password, keyBoardType, controller) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: TextField(
        controller: controller,
        keyboardType: keyBoardType,
        obscureText: password,
        decoration: InputDecoration(
          labelText: title,
          border: const OutlineInputBorder(),
        ),
      ),
    );
  }

  createButton(content, function, height, width) {
    return SizedBox(
      height: height,
      width: width,
      child: ElevatedButton(
        onPressed: function,
        child: createText(content, 20, Colors.white),
      ),
    );
  }

  createButtonIcon(content, icon, function, height, width) {
    return ElevatedButton.icon(
      onPressed: () {
        print(
            'procurei por todo lado um input pra file e não achei, tmj, fica com o botão mesmo');
      },
      icon: Icon(icon, size: 18),
      label: Text(content),
    );
  }

  createButtonRouteIcon(title, icon, width, height, context, route) {
    return ElevatedButton(
      onPressed: () {
        Navigator.of(context).pushNamed(route);
      },
      // ignore: sort_child_properties_last
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Icon(icon),
          const SizedBox(width: 10),
          Text(title),
        ],
      ),
      style: ElevatedButton.styleFrom(
          fixedSize: Size(width, height),
          padding: const EdgeInsets.all(30),
          textStyle: const TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          )),
    );
  }
}
