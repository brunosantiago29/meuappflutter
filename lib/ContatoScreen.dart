import 'package:flutter/material.dart';

class ContatoScreen extends StatelessWidget {
  const ContatoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contato'),
      ),
      body: const Center(
        child: Text('Página de Contato\nTelefone: (XX) XXXX-XXXX'),
      ),
    );
  }
}
