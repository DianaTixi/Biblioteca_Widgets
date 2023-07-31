class SliderItemModel {
  final String title;
  final String caption;
  final String imagenUrl;

  SliderItemModel(this.title, this.caption, this.imagenUrl);
}

final sliders = <SliderItemModel>[
  SliderItemModel(
      "Busca la comida",
      "Laboris minim quis enim Lorem irure do qui. Magna ipsum mollit ullamco mollit aliquip elit veniam aliquip dolore laborum. Ex quis sint ipsum ad exercitation.",
      "https://picsum.photos/id/30/600/350"),
  SliderItemModel(
      "Busca las monedas",
      "Laboris minim quis enim Lorem irure do qui. Magna ipsum mollit ullamco mollit aliquip elit veniam aliquip dolore laborum. Ex quis sint ipsum ad exercitation.",
      "https://picsum.photos/id/45/600/350"),
  SliderItemModel(
      "Compra los boletos",
      "Laboris minim quis enim Lorem irure do qui. Magna ipsum mollit ullamco mollit aliquip elit veniam aliquip dolore laborum. Ex quis sint ipsum ad exercitation.",
      "https://picsum.photos/id/50/600/350"),
];
