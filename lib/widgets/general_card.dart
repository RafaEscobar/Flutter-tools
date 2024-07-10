import 'dart:ui';

import 'package:flutter/material.dart';

class GeneralCard extends StatefulWidget {
  final String cardText;
  final String imageUrl;
  final VoidCallback? actionCard;

  const GeneralCard({
    required this.cardText,
    required this.imageUrl,
    required this.actionCard,
    super.key
  });

  @override
  State < GeneralCard > createState() => _GeneralCardState();
}

class _GeneralCardState extends State < GeneralCard > {
  bool isExpanded = false;

  void actionCard() async {
      setState(() => isExpanded = !isExpanded );
      await Future.delayed(const Duration(milliseconds: 100));
      widget.actionCard!();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => actionCard(),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 100),
        width: (isExpanded == false) ? 180 : 190,
        height: (isExpanded == false) ? 120 : 130,
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.asset(
                fit: BoxFit.cover,
                widget.imageUrl,
                width: (isExpanded == false) ? 180 : 190,
                height: (isExpanded == false) ? 120 : 130,
              ),
            ),
            Positioned(
              bottom: 6,
              left: 6,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(6),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 3),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.2),
                      ),
                      child: Text(
                        isExpanded.toString(),
                        style: const TextStyle(fontSize: 12, color: Colors.black),
                      ),
                  ),
                ),
              )
            )
          ],
        ),
      ),
    );
  }
}