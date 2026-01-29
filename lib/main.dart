import 'package:flutter/material.dart';
import 'dart:math';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const AplikasiDadu());
}

class AplikasiDadu extends StatelessWidget {
  const AplikasiDadu({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 5, 44, 117),
        appBar: AppBar(
          title: const Text(
            'Dicee',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
          backgroundColor: const Color.fromARGB(255, 0, 20, 26),
        ),
        body: const HalamanDadu(),
      ),
    );
  }
}

class HalamanDadu extends StatefulWidget {
  const HalamanDadu({super.key});

  @override
  State<HalamanDadu> createState() => _HalamanDaduState();
}

class _HalamanDaduState extends State<HalamanDadu> {
  final player = AudioPlayer();

  int indexDaduKiri = 0;
  int indexDaduKanan = 1;

  final List<String> daftarDadu = [
    'images/dice1.png',
    'images/dice2.png',
    'images/dice3.png',
    'images/dice4.png',
    'images/dice5.png',
    'images/dice6.png',
  ];

  void kocokKiri() {
    setState(() {
      indexDaduKiri = Random().nextInt(6);
    });
    player.stop();
    player.play( AssetSource('sounds/dice.mp3'));
  }

  void kocokKanan() {
    setState(() {
      indexDaduKanan = Random().nextInt(6);
    });

    player.stop();
    player.play( AssetSource('sounds/dice.mp3'));
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          // ==========================================================
          // CARA LAMA (MANUAL PANJANG) 
          // ==========================================================
          /* // DADU KIRI 
          Expanded(
            child: TextButton(
              onPressed: kocokKiri,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Image.asset(daftarDadu[indexDaduKiri]),
              ),
            ),
          ),

          // DADU KANAN 
          Expanded(
            child: TextButton(
              onPressed: kocokKanan,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Image.asset(daftarDadu[indexDaduKanan]),
              ),
            ),
          ), 
          */

          // ==========================================================
          // (PAKAI CETAKAN/CUSTOM WIDGET)
          // ==========================================================
          
          // Dadu Kiri (Cukup Panggil Class TombolDadu)
          TombolDadu(
            saatDitekan: kocokKiri, 
            gambarDadu: daftarDadu[indexDaduKiri]
          ),

          // Dadu Kanan (Cukup Panggil Class TombolDadu)
          TombolDadu(
            saatDitekan: kocokKanan, 
            gambarDadu: daftarDadu[indexDaduKanan]
          ),
          
        ],
      ),
    );
  }
}

// ==========================================================
//CETAKAN BARU (CUSTOM WIDGET)
// ==========================================================
class TombolDadu extends StatelessWidget {
  final VoidCallback saatDitekan; 
  final String gambarDadu;       

  const TombolDadu({
    super.key,
    required this.saatDitekan,
    required this.gambarDadu,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextButton(
        onPressed: saatDitekan, 
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Image.asset(gambarDadu),
        ),
      ),
    );
  }
}