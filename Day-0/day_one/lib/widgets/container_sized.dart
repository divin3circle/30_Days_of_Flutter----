import 'package:flutter/material.dart';

class Container_Sized extends StatelessWidget {
  const Container_Sized({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink,
          title: const Text('Container Sized'),
        ),
        body: Center(
          child: Container(
            padding: const EdgeInsets.all(8),
            width: 100,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Colors.pink,
                backgroundBlendMode: BlendMode.difference,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 20,
                    spreadRadius: 5,
                    color: Colors.black,
                  ),
                ]),
            height: 100,
            child: const Center(
              child: Text('hello world'),
            ),
          ),
        ));
  }
}
