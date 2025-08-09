import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon({super.key, required this.icon});

  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      width: 48,

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white.withAlpha(15),
      ),
      child: IconButton(onPressed: () {}, icon: Icon(icon)),
    );
  }
}
