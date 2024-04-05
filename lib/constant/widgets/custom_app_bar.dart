import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key, this.title = "", this.leading});

  final String title;
  final Widget? leading;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Center(
        child: Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Color(0xFFF5F5F7),
          ),
        ),
      ),
      backgroundColor: const Color(0xFF2A4858),
    );
  }

  // @override
  // // TODO: implement preferredSize
  // Size get preferredSize => throw UnimplementedError();

  @override
  Size get preferredSize => const Size(double.infinity, 60);
}
