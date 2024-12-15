import 'package:flutter/material.dart';

class MenuRotado extends StatefulWidget {
  const MenuRotado({super.key});

  @override
  MenuRotadoState createState() => MenuRotadoState();
}

class MenuRotadoState extends State<MenuRotado> {
  String selected = 'Animals';

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        buildMenuItem('Reptiles'),
      
        buildMenuItem('Birds'),
        
        buildMenuItem('Animals'),
        
        buildMenuItem('Fishes'),
      ],
    );
  }

  Widget buildMenuItem(String text) {
    bool isSelected = selected == text;
    return GestureDetector(
      onTap: () {
        setState(() {
          selected = text;
        });
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RotatedBox(
            quarterTurns: 3,
            child: Text(
              text,
              style: TextStyle(
                color: isSelected ? Colors.white : Colors.grey,
                fontSize: 20,
                fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
              ),
            ),
          ),
          if (isSelected)
            Container(
              margin: const EdgeInsets.only(left: 8),
              height: 8,
              width: 8,
              decoration: const BoxDecoration(
                color: Colors.orange,
                shape: BoxShape.circle,
              ),
            ),
        ],
      ),
    );
  }
}
