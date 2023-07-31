import 'package:biblioteca_widgets/app/domain/models/menu_item_model.dart';
import 'package:biblioteca_widgets/app/presentation/shared_widgets/menu_item_widget.dart';
import 'package:flutter/material.dart';

class ListMenuView extends StatelessWidget {
  const ListMenuView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ...menuItems.map(
          (menuItem) => MenuItemWidget(menuItem: menuItem),
        )
      ],
    );
  }
}
