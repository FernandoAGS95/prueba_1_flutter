import 'package:flutter/material.dart';
import 'package:prueba_1/menu/widgets/headerSubInfo.dart';
import 'package:prueba_1/menu/widgets/imagenSubInfo.dart';

import 'package:prueba_1/menu/widgets/tituloApp.dart';

class PlantillaEspecifica extends StatelessWidget {
  final String titulo;
  final String img;
  final String descrip;
  const PlantillaEspecifica({
    Key? key,
    required this.titulo,
    required this.img,
    required this.descrip,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF285555),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 50),
            headerSubInfo(context), 
            TituloApp(context,titulo), 
             const SizedBox(height: 100),
             Imagensubinfo(animal:img), 
             const SizedBox(height: 40),
              Text(
              descrip,
              style: const TextStyle(
                fontSize: 20,
                color: Colors.white70,
              ),
            ),
            const Spacer(), 
        
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
         
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    color: const Color(0xFF417F7F),
                    borderRadius: BorderRadius.circular(12), 
                  ),
                  child: Center(
                    child: Container(
                      width: 40,
                      height: 40,
                      
                      child: Icon(
                        Icons.favorite_border, 
                        color: Colors.white, 
                        size: 30,
                      ),
                    ),
                  ),
                ),
            
                ElevatedButton(
                  onPressed: () {
                    
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    minimumSize: Size( 250, 60)
                  ),
                  
                  child: Text("Get started",style: TextStyle(color: Colors.white),),
                ),
              ],
            ),
            const SizedBox(height: 40), 
          ],
        ),
      ),
    );
  }
}



