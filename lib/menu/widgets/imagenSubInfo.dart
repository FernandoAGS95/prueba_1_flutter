import 'package:flutter/material.dart';

class Imagensubinfo extends StatelessWidget {
  final String animal;
  const Imagensubinfo({super.key,required this.animal});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,  
      children: [
        
        const Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            //TODO:
            //1. GENERICO CANTI ESPECIE
            Text(
              "37",
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Text(
              "Species",
              style: TextStyle(
                fontSize: 16,
                color: Colors.white70,
              ),
            ),
          ],
        ),
        //TODO:
        //1.Hacer geneirica la imagen // LISTO
        Image.asset(
          "assets/img/$animal.png",
          height: 200, 
        ),
      ],
    );
  }
}
