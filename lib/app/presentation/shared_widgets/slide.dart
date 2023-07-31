import 'package:biblioteca_widgets/app/domain/models/slider_item_model.dart';
import 'package:flutter/material.dart';

class SliderWidget extends StatelessWidget {
  const SliderWidget({
    super.key,
    required this.slide,
  });
  final SliderItemModel slide;

  @override
  Widget build(BuildContext context) {
    final titleStyle = Theme.of(context).textTheme.titleLarge;
    final captionStyle = Theme.of(context).textTheme.bodySmall;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(slide.imagenUrl),
            const SizedBox(height: 20),
            Text(
              slide.title,
              style: titleStyle,
            ),
            const SizedBox(height: 10),
            Text(
              slide.caption,
              style: captionStyle,
            ),
          ],
        ),
      ),
    );
  }
}
