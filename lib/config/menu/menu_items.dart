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
    icon: Icons.play_arrow,
    title: 'Buttons',
    subTitle: 'Buttons Screen',
    link: '/buttons',
  ),
  MenuItem(
    icon: Icons.credit_card,
    title: 'Cards',
    subTitle: 'Styled Container',
    link: '/cards',
  ),
];
