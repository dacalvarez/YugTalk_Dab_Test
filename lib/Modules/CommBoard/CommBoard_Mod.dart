import 'package:flutter/material.dart';
import 'package:test_drive/Modules/CommBoard/SymbolPlayer_Widget.dart';
import 'package:test_drive/Modules/CommBoard/CategoriesTiles_Widget.dart';


class CommBoard_Mod extends StatelessWidget {
  const CommBoard_Mod({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20), // Padding outside the container
      child: Container(
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 224, 224, 224), // Background color
          borderRadius: BorderRadius.circular(20), // Rounded corners
        ),
        padding: const EdgeInsets.all(5), // Padding inside the container
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 20),
            Expanded(
              child: ListView(
                children: [
                  // Add your widgets here
                  ListTile(
                    title: SymbolPlayer_Widget(),
                  ),
                  ListTile(
                    title: CategoriesTiles_Widget(),
                  ),
                  // Add more widgets as needed
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
