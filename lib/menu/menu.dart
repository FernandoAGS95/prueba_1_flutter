import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:prueba_1/menu/widgets/headerApp.dart';
import 'package:prueba_1/menu/widgets/imagenesAnimales.dart';
import 'package:prueba_1/menu/widgets/menuRotado.dart';
import 'package:prueba_1/menu/widgets/subtituloApp.dart';
import 'package:prueba_1/menu/widgets/tituloApp.dart';

class AnimalSound extends StatefulWidget {
  const AnimalSound({super.key});

  @override
  State<AnimalSound> createState() => _AnimalSoundState();
}

class _AnimalSoundState extends State<AnimalSound> {
  bool isPlaying = false;
  late AudioPlayer player;
  //TEST CON AUDIO
  final Map<String, String> sonidos = {
    "cat": "assets/audios/cat.wav",
    "bird": "assets/audios/bird.wav",
    "dog": "assets/audios/dog.wav",
    "horse": "assets/audios/horse.wav",
    "cow": "assets/audios/cow.wav",
    "lion": "assets/audios/lion.wav",
    "rooster": "assets/audios/rooster.wav",
  };
  //TEST CON INFO
  

  @override
  void initState() {
    super.initState();
    player = AudioPlayer();
  }

  @override
  void dispose() {
    player.dispose();
    super.dispose();
  }

  void sonidoAnimal(String animal) async {
    if (isPlaying) {
      await player.stop();
      setState(() {
        isPlaying = false;
      });
    }
    try {
      await player.setAsset(sonidos[animal]!);
      await player.play();
      setState(() {
        isPlaying = true;
      });
    } catch (e) {
      setState(() {
        isPlaying = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF285555),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 70),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: headerSection(context),
          ),
          const SizedBox(height: 20),
          TituloApp(context, "Discover"),
          SubtituloApp(context),
          // Row para alinear ImagenesAnimales y MenuRotado
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 3,
                  child: ImagenesAnimales(
                    context,
                    ["cat", "bird", "dog", "horse", "cow", "lion", "rooster"],
                    isPlaying,
                    sonidoAnimal,
                  ),
                ),
                const SizedBox(
                  width: 80, 
                  child: MenuRotado(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
