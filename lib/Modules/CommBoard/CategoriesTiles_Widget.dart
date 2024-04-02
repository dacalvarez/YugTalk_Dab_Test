import 'package:flutter/material.dart';
import 'package:tab_container/tab_container.dart';

class CategoriesTiles_Widget extends StatelessWidget {
  CategoriesTiles_Widget({Key? key}) : super(key: key);

  // Define symbols and associated words for each category
  final List<List<Map<String, String>>> categoryData = [
    // Category 1 data
    [
      {'symbol': 'A', 'word': 'Apple'},
      {'symbol': 'B', 'word': 'Banana'},
      {'symbol': 'C', 'word': 'Carrot'},
      {'symbol': 'A', 'word': 'Apple'},
      {'symbol': 'B', 'word': 'Banana'},
      {'symbol': 'C', 'word': 'Carrot'},
      {'symbol': 'A', 'word': 'Apple'},
      {'symbol': 'B', 'word': 'Banana'},
      {'symbol': 'C', 'word': 'Carrot'},
      {'symbol': 'A', 'word': 'Apple'},
      {'symbol': 'B', 'word': 'Banana'},
      {'symbol': 'C', 'word': 'Carrot'},
    ],
    // Category 2 data
    [
      {'symbol': 'X', 'word': 'Xylophone'},
      {'symbol': 'Y', 'word': 'Yak'},
      {'symbol': 'Z', 'word': 'Zebra'},
    ],
    // Category 3 data
    [
      {'symbol': '1', 'word': 'One'},
      {'symbol': '2', 'word': 'Two'},
      {'symbol': '3', 'word': 'Three'},
    ],
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 555, // Adjust height as needed
      child: TabContainer(
        color: Theme.of(context).colorScheme.secondary,
        children: List.generate(
          categoryData.length,
          (index) => Container(
            padding: EdgeInsets.all(10),
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 5, // Adjust as needed for the number of columns
                crossAxisSpacing: 4.0,
                mainAxisSpacing: 8.0,
              ),
              itemCount: categoryData[index].length,
              itemBuilder: (context, itemIndex) {
                return Card(
                  elevation: 2,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          categoryData[index][itemIndex]['symbol']!,
                          style: TextStyle(fontSize: 24),
                        ),
                        Text(
                          categoryData[index][itemIndex]['word']!,
                          style: TextStyle(fontSize: 18),
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
