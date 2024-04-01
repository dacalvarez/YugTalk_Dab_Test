import 'package:flutter/material.dart';

class SymbolPlayer_Widget extends StatefulWidget {
  final String symbol;
  final String word;

  const SymbolPlayer_Widget({
    Key? key,
    required this.symbol,
    required this.word,
  }) : super(key: key);

  @override
  _SymbolPlayerWidgetState createState() => _SymbolPlayerWidgetState();
}

class _SymbolPlayerWidgetState extends State<SymbolPlayer_Widget> {
  List<Map<String, String>> selectedSymbols = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: selectedSymbols.length,
                itemBuilder: (context, index) {
                  final symbol = selectedSymbols[index]['symbol'];
                  final word = selectedSymbols[index]['word'];

                  return ListTile(
                    title: Text(word!),
                    leading: Icon(_getIconData(symbol!)),
                    onTap: () {
                      setState(() {
                        selectedSymbols.removeAt(index);
                      });
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  IconData _getIconData(String symbol) {
    switch (symbol) {
      case 'home':
        return Icons.home;
      case 'school':
        return Icons.school;
      case 'kitchen':
        return Icons.kitchen;
      // Add more cases as needed
      default:
        return Icons.error;
    }
  }
}
