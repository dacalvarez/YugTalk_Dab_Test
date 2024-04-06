import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter/material.dart';

class PopupForm_Mod extends StatelessWidget {
  final String symbol;
  final String word;
  final String audioUrl;

  const PopupForm_Mod({
    this.symbol = "😀",
    this.word = 'lex',
    this.audioUrl = "https://www.youtube.com/watch?v=ocWw4hWDeP0",
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black.withOpacity(0.1),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                      icon: Icon(Icons.close),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
                Expanded(
                  child: StaggeredGrid.count(
                    crossAxisCount: 3, //columns
                    mainAxisSpacing: 5, //vertical padding
                    crossAxisSpacing: 5, //horizonal padding
                    
                    children: [

                      StaggeredGridTile.count(
                        crossAxisCellCount: 2, //column
                        mainAxisCellCount: 1, //row
                        
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.blue,
                          ),
                          //child: Widget1(),
                        ),

                      ),
                      StaggeredGridTile.count(
                        crossAxisCellCount: 2,
                        mainAxisCellCount: 1,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.green,
                          ),
                          //child: Widget2(),
                        ),

                      ),
                      StaggeredGridTile.count(
                        crossAxisCellCount: 1,
                        mainAxisCellCount: 1,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.red,
                          ),
                          //child: Widget3(),
                        ),

                      ),
                      StaggeredGridTile.count(
                        crossAxisCellCount: 1,
                        mainAxisCellCount: 1,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.yellow,
                          ),
                          //child: Widget4(),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
