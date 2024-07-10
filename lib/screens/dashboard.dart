import 'package:flutter/material.dart';
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
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GeneralCard(
                  imageUrl: 'assets/images/animation.jpg',
                  cardText: 'Animaciones',
                ),
                GeneralCard(
                  imageUrl: 'assets/images/text.jpg',
                  cardText: 'Textos',
                )
              ],
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GeneralCard(
                  imageUrl: 'assets/images/effects.jpg',
                  cardText: 'Efectos',
                ),
                GeneralCard(
                  imageUrl: 'assets/images/static.jpg',
                  cardText: 'Objetos en general',
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}