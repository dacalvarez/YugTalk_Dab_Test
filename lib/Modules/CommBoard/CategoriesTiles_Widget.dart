import 'package:flutter/material.dart';
import 'package:tab_container/tab_container.dart';
import 'package:test_drive/Modules/CommBoard/SymbolPlayer_Widget.dart';


class CategoriesTiles_Widget extends StatelessWidget {
  const CategoriesTiles_Widget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.5, // Adjust height dynamically
      child: TabContainer(
        color: Theme.of(context).colorScheme.secondary,
        children: [
          _buildCategoryTab('Home', context),
          _buildCategoryTab('School', context),
          _buildCategoryTab('Kitchen', context),
          // Add more categories as needed
        ],
        tabs: [
          'Home',
          'School',
          'Kitchen',
          // Add more category names as needed
        ],
      ),
    );
  }

  Widget _buildCategoryTab(String categoryName, BuildContext context) {
    // Temporary data for each category
    List<Map<String, String>> symbolsAndWords = [
      {'symbol': 'home', 'word': 'Home'},
      {'symbol': 'school', 'word': 'School'},
      {'symbol': 'kitchen', 'word': 'Kitchen'},
      // Add more symbols and words as needed
    ];

    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // Adjust as needed
        mainAxisSpacing: 8,
        crossAxisSpacing: 8,
        childAspectRatio: 2, // Adjust as needed
      ),
      itemCount: symbolsAndWords.length,
      itemBuilder: (context, index) {
        final symbol = symbolsAndWords[index]['symbol'];
        final word = symbolsAndWords[index]['word'];

        return GestureDetector(
          onTap: () {
            // Pass the selected symbol and word to SymbolPlayerWidget
            Navigator.of(context).popUntil((route) => route.isFirst);
            Navigator.of(context).push(MaterialPageRoute(
              builder: (_) => SymbolPlayer_Widget(symbol: symbol!, word: word!),
            ));
          },
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(8),
            ),
            padding: EdgeInsets.all(8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  _getIconData(symbol!),
                  size: 36,
                ),
                SizedBox(height: 8),
                Text(
                  word!,
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
        );
      },
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
