import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: const Color(0xFF3A6E68),
    );
  }

  @override
  Size get preferredSize =>
      const Size.fromHeight(0.0); // Set the height to 40.0
}
