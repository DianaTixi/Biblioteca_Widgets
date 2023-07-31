import 'package:biblioteca_widgets/app/domain/models/menu_item_model.dart';
import 'package:flutter/material.dart';

//Custom widgets
class MenuItemWidget extends StatelessWidget {
  const MenuItemWidget({
    super.key,
    required this.menuItem,
  });

  final MenuItemModel menuItem;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return ListTile(
      title: Text(menuItem.title),
      subtitle: Text(menuItem.subTitle),
      leading: Icon(
        menuItem.leadingIcon,
        color: colors.primary,
      ),
      trailing: Icon(
        Icons.chevron_right_outlined,
        color: colors.primary,
      ),
      onTap: () {
        //Navegacion 1.0
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => menuItem.screen,
          ),
        );
      },
    );
  }
}
