import 'package:flutter/material.dart';

class NoteIteam extends StatelessWidget {
  const NoteIteam({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Color(0xffF0F465),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 32, bottom: 32, left: 32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(
                'Flutter Note',
                style: TextStyle(color: Colors.black, fontSize: 28),
              ),
              subtitle: Text(
                'Make your carrer With Sayedshoieb ',
                style: TextStyle(
                  color: Colors.black.withAlpha(100),
                  fontSize: 16,
                ),
              ),

              trailing: IconButton(
                onPressed: () {},
                icon: Icon(Icons.delete, color: Colors.black, size: 32),
              ),
            ),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Text(
                '17 Agustus 2025',
                style: TextStyle(
                  color: Colors.black.withAlpha(100),
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
