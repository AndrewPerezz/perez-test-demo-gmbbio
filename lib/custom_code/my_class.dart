import 'package:flutter/material.dart';

class FairwayBunkerIcon extends StatelessWidget {
  final double size;

  const FairwayBunkerIcon({Key? key, this.size = 200.0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(
        'assets/images/fairway_bunker_icon_final.png',
        width: size,
        height: size,
        fit: BoxFit.contain,
      ),
    );
  }
}
