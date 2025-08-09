import 'package:flutter/material.dart';
import 'package:noteapp/views/widgets/Custom_icon.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key, required this.icon, required this.title});
  final IconData icon;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: TextStyle(fontSize: 28)),
        CustomIcon(icon: icon),
      ],
    );
  }
}
