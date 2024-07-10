import 'dart:ui';

import 'package:flutter/material.dart';

class GeneralCard extends StatelessWidget {
  final String cardText;
  final String imageUrl;

  const GeneralCard({
    required this.cardText,
    required this.imageUrl,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      width: 200,
      height: 140,
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.asset(
              fit: BoxFit.cover,
              imageUrl,
              width: 200,
              height: 140,
          ),
          ),
          Positioned(
            bottom: 8,
            left: 6,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 4),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.2),
                  ),
                  child: Text(
                    cardText,
                    style: const TextStyle(fontSize: 12, color: Colors.black),
                  ),
                ),
              ),
            )
          )
        ],
      ),
    );
  }
}