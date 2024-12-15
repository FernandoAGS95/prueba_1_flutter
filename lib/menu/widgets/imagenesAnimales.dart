import 'package:flutter/material.dart';
import 'package:prueba_1/menu/animales/plantillaSegundaVista.dart';
Widget ImagenesAnimales(
  BuildContext context, 
  List<String> animales, 
  bool isPlaying, 
  Function _playAnimalSound) {
  final List<Map<String, dynamic>> animalitos = [
  {
    "name": "Gato",
    "description": "Los gatos pasan la mitad de su día durmiendo y son muy ágiles porque tienen un esqueleto flexible. Pueden saltar hasta seis veces su altura",
    "species_count": 8,
    "img":"cat_2"
  },
  {
    "name": "Pájaro",
    "description": "Los pájaros son los únicos animales con plumas, ¡y algunas especies pueden volar a más de 100 km/h! Además, usan sus cantos para hablar entre ellos o para llamar la atención de otros pájaros",
    "species_count": 8,
    "img":"bird_2"
  },
  {
    "name": "Perro",
    "description": "Los perros tienen un súper olfato, ¡pueden oler hasta 100.000 veces mejor que los humanos! Por eso, muchas veces ayudan a encontrar cosas o personas",
    "species_count": 8,
    "img":"dog_2"
  },
  {
    "name": "Caballo",
    "description": "Los caballos pueden dormir de pie gracias a sus patas fuertes, y tienen una excelente memoria. Pueden reconocer amigos humanos después de muchos años",
    "species_count": 8,
    "img":"horse_2"
  },
  {
    "name": "Vaca",
    "description": "Las vacas tienen cuatro estómagos que les ayudan a digerir el pasto. También tienen muy buena memoria, recuerdan caras y lugares por mucho tiempo",
    "species_count": 8,
    "img":"cow_2"
  },
  {
    "name": "León",
    "description": "Los leones son conocidos como los reyes de la selva y su rugido puede escucharse hasta a 8 kilómetros. Las hembras son las que cazan para alimentar a toda la familia",
    "species_count": 8,
    "img":"lion_2"
  },
  {
    "name": "Gallo",
    "description": "Los gallos cantan para marcar su territorio y avisar a otros que están ahí. Su canto puede escucharse desde muy lejos, ¡incluso a 1 km de distancia!",
    "species_count": 8,
    "img":"rooster_2"
  }



];

  
  return Expanded(
    child: ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: animales.length, 
      itemBuilder: (context, index) {
        final animalData = animalitos[index]; 
        final String name = animalData['name'];
        final String imagen = animalData['img'];
        final String description = animalData['description']; 
        final String imagePath = imagen.toLowerCase();
        String animal = animales[index]; 
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 2,horizontal: 2),
          child: Align(
            alignment: Alignment.centerLeft, 
            child: GestureDetector(
              onTap: () {

                  Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PlantillaEspecifica(
                      titulo: name,
                      img: imagePath, 
                      descrip: description, 
                    ),
                  ),
                );
                  
              },
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: 250,
                    height: 250,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(
                        'assets/img/$animal.jpg', 
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  
                  Positioned(
                    bottom: 8,
                    right: 8,
                    child: GestureDetector(
                      onTap: () {
                      
                        _playAnimalSound(animal);
                      },
                      child: Icon(
                        isPlaying ? Icons.pause_circle_filled : Icons.play_circle_filled,
                        color: Colors.white,
                        size: 50,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    ),
  );
}
