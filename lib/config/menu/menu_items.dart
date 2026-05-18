import 'package:flutter/material.dart' show IconData, Icons;

class MenuItem {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  const MenuItem({
    required this.title,
    required this.subTitle,
    required this.link,
    required this.icon,
  });
}

const appMenuItems = <MenuItem>[
  MenuItem(
    title: 'Buttons',
    subTitle: 'Buttons Screen',
    link: '/buttons',
    icon: Icons.play_arrow,
  ),
  MenuItem(
    title: 'Cards',
    subTitle: 'Styled Container',
    link: '/cards',
    icon: Icons.credit_card,
  ),
  MenuItem(
    title: 'Progress Indicators',
    subTitle: 'Controlled and Generals',
    link: '/progress',
    icon: Icons.refresh_rounded,
  ),
  MenuItem(
    title: 'Snackbars and dialogs',
    subTitle: 'Indicators and Dialogs',
    link: '/snackbars',
    icon: Icons.info_outline,
  ),
  MenuItem(
    title: "Animated container",
    subTitle: "Stateful Widget Animated",
    link: "/animated",
    icon: Icons.play_circle_fill_outlined,
  ),
  MenuItem(
    title: "UI Controls + Tiles",
    subTitle: "A collection of UI Controls",
    link: "/ui-controls",
    icon: Icons.car_rental_outlined,
  ),
  MenuItem(
    title: "App Tutorial",
    subTitle: "A tutorial for the app",
    link: "/tutorial",
    icon: Icons.auto_stories_outlined,
  ),
];
