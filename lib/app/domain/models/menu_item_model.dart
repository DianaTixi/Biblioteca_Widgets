import 'package:biblioteca_widgets/app/presentation/screens/animated_screen.dart';
import 'package:biblioteca_widgets/app/presentation/screens/botones_screen.dart';
import 'package:biblioteca_widgets/app/presentation/screens/cards_screen.dart';
import 'package:biblioteca_widgets/app/presentation/screens/dialogs_screen.dart';
import 'package:biblioteca_widgets/app/presentation/screens/infinite_scroll_screen.dart';
import 'package:biblioteca_widgets/app/presentation/screens/onboarding_meedu_screen.dart';
import 'package:biblioteca_widgets/app/presentation/screens/onboarding_screen.dart';
import 'package:biblioteca_widgets/app/presentation/screens/progress_indicator_screen.dart';
import 'package:biblioteca_widgets/app/presentation/screens/ui_control_screen.dart';
import 'package:flutter/material.dart';

class MenuItemModel {
  MenuItemModel({
    required this.title,
    required this.subTitle,
    required this.leadingIcon,
    required this.screen,
  });

  final String title;
  final String subTitle;
  final IconData leadingIcon;
  final Widget screen;
}

final menuItems = [
  MenuItemModel(
    title: "Botones",
    subTitle: "Ejemplos de botones",
    leadingIcon: Icons.account_balance_sharp,
    screen: const BotonesScreen(),
  ),
  MenuItemModel(
    title: "Cards",
    subTitle: "Ejemplos de cards",
    leadingIcon: Icons.credit_card_sharp,
    screen: const CardsScreen(),
  ),
  MenuItemModel(
    title: "Snackbars & Dialgos",
    subTitle: "Ejemplos de dialogs",
    leadingIcon: Icons.info,
    screen: const DialogsScreen(),
  ),
  MenuItemModel(
    title: "Progress indicator",
    subTitle: "Ejemplos de Progress indicator",
    leadingIcon: Icons.refresh,
    screen: const ProgressIndicatorScreen(),
  ),
  MenuItemModel(
    title: "Animated",
    subTitle: "Ejemplos de dialogs",
    leadingIcon: Icons.animation,
    screen: const AnimatedScreen(),
  ),
  MenuItemModel(
    title: "UI controls",
    subTitle: "Ejemplos de dialogs",
    leadingIcon: Icons.control_point_sharp,
    screen: const UiControlsScreen(),
  ),
  MenuItemModel(
    title: "Onboarding",
    subTitle: "Ejemplos de dialogs",
    leadingIcon: Icons.offline_bolt_sharp,
    screen: const OnboardingScreen(),
  ),
  MenuItemModel(
    title: "Infinite scroll",
    subTitle: "Ejemplos de dialogs",
    leadingIcon: Icons.list,
    screen: const InfiniteScrollScreen(),
  ),
  MenuItemModel(
    title: "Onboarding",
    subTitle: "Flutter_meedu",
    leadingIcon: Icons.offline_bolt_sharp,
    screen: const OnboardingMeeduScreen(),
  ),
];
