import 'package:flutter/material.dart';

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