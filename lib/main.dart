import 'package:flutter/material.dart';
import 'screens/halaman_dadu.dart';


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


