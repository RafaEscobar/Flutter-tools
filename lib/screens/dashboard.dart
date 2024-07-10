import 'package:flutter/material.dart';
import 'package:tools/screens/animations/animations_index.dart';
import 'package:tools/screens/effects/effects_index.dart';
import 'package:tools/screens/static/statics_index.dart';
import 'package:tools/screens/text/texts_index.dart';
import 'package:tools/widgets/general_card.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({
    super.key
  });
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawerEnableOpenDragGesture: false,
      body: Container(
        alignment: Alignment.center,
        color: Colors.blue,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GeneralCard(
                  imageUrl: 'assets/images/animation.jpg',
                  cardText: 'Animaciones',
                  actionCard: () => Navigator.pop(
                    context,
                    MaterialPageRoute(builder: (context) => const AnimationsIndex())
                  ),
                ),
                GeneralCard(
                  imageUrl: 'assets/images/text.jpg',
                  cardText: 'Textos',
                  actionCard: () => Navigator.pop(
                    context,
                    MaterialPageRoute(builder: (context) => const TextsIndex())
                  ),
                )
              ],
            ),
            const SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GeneralCard(
                  imageUrl: 'assets/images/effects.jpg',
                  cardText: 'Efectos',
                  actionCard: () => Navigator.pop(
                    context,
                    MaterialPageRoute(builder: (context) => const EffectsIndex())
                  ),
                ),
                GeneralCard(
                  imageUrl: 'assets/images/static.jpg',
                  cardText: 'Objetos en general',
                  actionCard: () => Navigator.pop(
                    context,
                    MaterialPageRoute(builder: (context) => const StaticsIndex())
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}