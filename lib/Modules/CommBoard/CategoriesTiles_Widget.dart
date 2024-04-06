import 'package:flutter/material.dart';
import 'package:flutter_overlay/flutter_overlay.dart';
import 'package:test_drive/Modules/PopupForm/PopupForm_Mod.dart';
import 'package:tab_container/tab_container.dart';

class CategoriesTiles_Widget extends StatelessWidget {
  CategoriesTiles_Widget({Key? key}) : super(key: key);

  final List<List<Map<String, String>>> categoryData = [
    [
      {'symbol': 'A', 'word': 'Apple', 'audio': 'https://www.example.com/audio1.mp3'},
      {'symbol': 'B', 'word': 'Banana', 'audio': 'https://www.example.com/audio2.mp3'},
      {'symbol': 'C', 'word': 'Carrot', 'audio': 'https://www.example.com/audio3.mp3'},
    ],
    [
      {'symbol': 'X', 'word': 'Xylophone', 'audio': 'https://www.example.com/audio4.mp3'},
      {'symbol': 'Y', 'word': 'Yak', 'audio': 'https://www.example.com/audio5.mp3'},
      {'symbol': 'Z', 'word': 'Zebra', 'audio': 'https://www.example.com/audio6.mp3'},
    ],
    [
      {'symbol': '1', 'word': 'One', 'audio': 'https://www.example.com/audio7.mp3'},
      {'symbol': '2', 'word': 'Two', 'audio': 'https://www.example.com/audio8.mp3'},
      {'symbol': '3', 'word': 'Three', 'audio': 'https://www.example.com/audio9.mp3'},
    ],
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 555,
      child: TabContainer(
        color: Theme.of(context).colorScheme.secondary,
        children: List.generate(
          categoryData.length,
          (index) => Container(
            padding: EdgeInsets.all(10),
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 5,
                crossAxisSpacing: 4.0,
                mainAxisSpacing: 8.0,
              ),
              itemCount: categoryData[index].length,
              itemBuilder: (context, itemIndex) {
                Map<String, String> data = categoryData[index][itemIndex];
                return GestureDetector(
                  onTap: () {
                    // Handle tile selection
                  },
                  onLongPressStart: (LongPressStartDetails details) {
                    Future.delayed(Duration(seconds: 1), () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return PopupForm_Mod(
                            symbol: data['symbol']!,
                            word: data['word']!,
                            audioUrl: data['audio']!,
                          );
                        },
                      );
                    });
                  },
                  child: Card(
                    elevation: 2,
                    child: Stack(
                      children: [
                        Align(
                          alignment: Alignment.bottomRight,
                          child: IconButton(
                            icon: Icon(Icons.spatial_audio),
                            iconSize: 50,
                            onPressed: () {
                              // Play audio associated with the symbol
                            },
                          ),
                        ),
                        Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                data['symbol']!,
                                style: TextStyle(fontSize: 24),
                              ),
                              Text(
                                data['word']!,
                                style: TextStyle(fontSize: 18),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ),
        tabs: ['Category 1', 'Category 2', 'Category 3'],
      ),
    );
  }
}
