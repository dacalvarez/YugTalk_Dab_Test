import 'package:flutter/material.dart';

class SymbolPlayer_Widget extends StatefulWidget {
  const SymbolPlayer_Widget({Key? key}) : super(key: key);

  @override
  _SymbolPlayer_WidgetState createState() => _SymbolPlayer_WidgetState();
}

class _SymbolPlayer_WidgetState extends State<SymbolPlayer_Widget> {
  List<Map<String, String>> selectedSymbols = [
    {'symbol': '🐱', 'word': 'cat'},
    {'symbol': '🐶', 'word': 'dog'},
    {'symbol': '🐀', 'word': 'rat'},
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      height: 100,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Row(
        children: [
          IconButton(
            icon: Icon(Icons.play_arrow),
            padding: EdgeInsets.only(right: 40, left: 20),
            iconSize: 60,
            onPressed: () {
              // Play the selected symbols
              _playSymbols(selectedSymbols);
            },
          ),
          Expanded(
            child: Container(
              height: 90, // Set a fixed height for the symbols container
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: selectedSymbols.length,
                itemBuilder: (context, index) {
                  return Container(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    margin: EdgeInsets.only(right: 20),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          selectedSymbols[index]['symbol']!,
                          style: TextStyle(fontSize: 35), // Font size for the symbol
                        ),
                        SizedBox(height: 8),
                        Text(
                          selectedSymbols[index]['word']!,
                          style: TextStyle(fontSize: 16), // Font size for the word
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
          IconButton(
            icon: Icon(Icons.delete),
            padding: EdgeInsets.only(left: 40, right: 20),
            iconSize: 50,
            onPressed: () {
              // Delete all selected symbols
              setState(() {
                selectedSymbols.clear();
              });
            },
          ),
        ],
      ),
    );
  }

  void _playSymbols(List<Map<String, String>> symbols) {
    // Implement logic to play the selected symbols
    print('Playing symbols: $symbols');
  }
}
