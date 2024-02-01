// ignore_for_file: file_names

import 'package:flutter/material.dart'
    show
        AppBar,
        BottomNavigationBar,
        BottomNavigationBarItem,
        BottomNavigationBarType,
        BoxFit,
        BuildContext,
        Color,
        Colors,
        Column,
        Container,
        CrossAxisAlignment,
        EdgeInsets,
        FontWeight,
        GestureDetector,
        Icon,
        IconButton,
        IconData,
        Icons,
        Image,
        Key,
        ListView,
        MainAxisAlignment,
        MainAxisSize,
        MaterialPageRoute,
        Navigator,
        Row,
        Scaffold,
        ScaffoldMessenger,
        SizedBox,
        SnackBar,
        StatelessWidget,
        Text,
        TextStyle,
        Theme,
        VoidCallback,
        Widget;
import 'DestinosScreen.dart';
import 'PacotesScreen.dart';
import 'ContatoScreen.dart';
import 'SobreNosScreen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Explore Mundo'),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              _handleButtonTap(context, 'Abrir tela de pesquisa');
            },
          ),
        ],
      ),
      body: ListView(
        children: [
          Image.asset(
            'images/itiquira.jpeg',
            width: 600,
            height: 240,
            fit: BoxFit.cover,
          ),
          titleSection,
          buttonSection(context),
          textSection,
          reviewsSection,
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.location_on),
            label: 'Destinos',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.airplane_ticket),
            label: 'Pacotes',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.phone),
            label: 'Contato',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: 'Sobre nós',
          ),
        ],
        selectedItemColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.grey,
        selectedFontSize: 12,
        unselectedFontSize: 12,
        type: BottomNavigationBarType.fixed,
        currentIndex: 0,
        onTap: (index) {
          _handleNavigation(context, index);
        },
      ),
    );
  }

  Widget get titleSection {
    return Container(
      padding: const EdgeInsets.all(32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Cachoeira Salto Do Itiquira',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'Formosa, Goias',
            style: TextStyle(
              color: Colors.grey[500],
              fontSize: 16,
            ),
          ),
          Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          const Text('41'),
        ],
      ),
    );
  }

  Column _buildButtonColumn(
      Color color, IconData icon, String label, VoidCallback onTap) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: onTap,
          child: Icon(icon, color: color),
        ),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }

  Widget buttonSection(BuildContext context) {
    Color color = Theme.of(context).primaryColor;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(
          color,
          Icons.call,
          'LIGAR',
          () => _handleButtonTap(context, 'Ligando...'),
        ),
        _buildButtonColumn(
          color,
          Icons.near_me,
          'MAPA',
          () => _handleButtonTap(context, 'Abrindo google maps...'),
        ),
        _buildButtonColumn(
          color,
          Icons.share,
          'COMPARTILHAR',
          () => _handleButtonTap(context, 'compartilhar para...'),
        ),
      ],
    );
  }

  void _handleButtonTap(BuildContext context, String action) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(action),
      ),
    );
  }

  Widget get textSection {
    return Container(
      padding: const EdgeInsets.all(32),
      child: const Text(
        'O Salto do Itiquira possui 168m de queda livre, sendo a 7ª maior queda do país e a maior em fácil acesso do Brasil. A beleza do Itiquira encanta a todos que o visitam, sendo o maior atrativo do município, recebe visitantes de várias partes do mundo...',
        softWrap: true,
      ),
    );
  }

  Widget get reviewsSection {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Avaliações:',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          const SizedBox(height: 8),
          _buildReviewItem(
              'Daiane', 'Excelente lugar para relaxar! Recomendo.'),
          _buildReviewItem(
              'Bruno', 'A vista é incrível, experiência inesquecível.'),
        ],
      ),
    );
  }

  Widget _buildReviewItem(String username, String review) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            username,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 4),
          Text(review),
        ],
      ),
    );
  }

  void _handleNavigation(BuildContext context, int index) {
    switch (index) {
      case 0:
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const DestinosScreen()));
        break;
      case 1:
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const PacotesScreen()));
        break;
      case 2:
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const ContatoScreen()));
        break;
      case 3:
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const SobreNosScreen()));
        break;
    }
  }
}
