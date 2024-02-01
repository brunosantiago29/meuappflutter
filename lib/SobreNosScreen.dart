import 'package:flutter/material.dart';

class SobreNosScreen extends StatelessWidget {
  const SobreNosScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sobre Nós'),
      ),
      body: const Center(
        child: Text('Página Sobre Nós'),
      ),
    );
  }
}
