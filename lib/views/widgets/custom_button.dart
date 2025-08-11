import 'package:flutter/material.dart';

class CustomButtom extends StatelessWidget {
  const CustomButtom({super.key, this.onTap, this.isLoading = false});
  final VoidCallback? onTap;
  final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 55,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.blueAccent,
        ),
        child: Center(
          child: isLoading
              ? SizedBox(
                  height: 25,
                  width: 25,

                  child: CircularProgressIndicator(color: Colors.black),
                )
              : Text('Add', style: TextStyle(fontSize: 24)),
        ),
      ),
    );
  }
}
