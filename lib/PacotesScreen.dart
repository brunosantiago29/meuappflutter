import 'package:flutter/material.dart';

class PacotesScreen extends StatelessWidget {
  const PacotesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pacotes de Viagem'),
      ),
      body: const Center(
        child: Text('Página de Pacotes de Viagem'),
      ),
    );
  }
}
