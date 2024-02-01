import 'package:flutter/material.dart';

class DestinosScreen extends StatelessWidget {
  const DestinosScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Destinos'),
      ),
      body: const Center(
        child: Text('Página de Destinos'),
      ),
    );
  }
}
