import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const CustomBottomNavigationBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Color(0xFFE7FFDF),
      currentIndex: currentIndex,
      onTap: onTap,
      selectedItemColor: Color(0xFF003E25),
      unselectedItemColor: Colors.black54,
      type: BottomNavigationBarType.fixed,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Perfil',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.psychology_alt),
          label: 'VitalMaps',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.check_circle),
          label: 'Recomendações',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.menu),
          label: 'Geral',
        ),
      ],
    );
  }
}
