import 'package:biblioteca_widgets/app/presentation/shared_widgets/card_type_1.dart';
import 'package:biblioteca_widgets/app/presentation/shared_widgets/card_type_2.dart';
import 'package:biblioteca_widgets/app/presentation/shared_widgets/card_type_3.dart';
import 'package:biblioteca_widgets/app/presentation/shared_widgets/card_type_4.dart';
import 'package:flutter/material.dart';

const cards = <Map<String, dynamic>>[
  {"elevation": 0.0, "label": "Elevation 0.0"},
  {"elevation": 1.0, "label": "Elevation 1.0"},
  {"elevation": 2.0, "label": "Elevation 2.0"},
  {"elevation": 3.0, "label": "Elevation 3.0"},
  {"elevation": 4.0, "label": "Elevation 4.0"},
  {"elevation": 5.0, "label": "Elevation 5.0"},
  {"elevation": 6.0, "label": "Elevation 6.0"},
];

class CardsScreen extends StatelessWidget {
  const CardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cards"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ...cards.map(
              (itemCard) => CardType1(
                  elevation: itemCard['elevation'], label: itemCard["label"]),
            ),
            ...cards.map(
              (itemCard) => CardType2(
                  elevation: itemCard['elevation'], label: itemCard["label"]),
            ),
            ...cards.map(
              (itemCard) => CardType3(
                  elevation: itemCard['elevation'], label: itemCard["label"]),
            ),
            ...cards.map(
              (itemCard) => CardType4(
                  elevation: itemCard['elevation'], label: itemCard["label"]),
            ),
          ],
        ),
      ),
    );
  }
}
