import 'package:flutter/material.dart';
import 'package:test_drive/Modules/PopupForm/VideoPlayer_Widget.dart';
import 'package:test_drive/Modules/PopupForm/AudioPlayer_Widget.dart';


class PopupForm_Mod extends StatelessWidget {
  final String symbol;
  final String word;
  final String description;

  const PopupForm_Mod({
    this.symbol = "😀",
    this.word = 'lex',
    this.description = "A short description of the word here.",
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 215, 215, 215).withOpacity(0.6),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.9, // Adjust popup height as needed
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 111, 67, 192),
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(color: Colors.black, width: 3), // Main container border
            ),
            child: Column(
              children: [
                
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    // Placeholder for any widget you want on the left side of the close button
                    IconButton(
                      icon: Icon(Icons.close),
                      onPressed: () => Navigator.pop(context),
                      color: Colors.black,
                    ),
                  ],
                ),
                Expanded(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    
                    children: [
                      // Video Container
                      Container(
                        width: 865, // Controlled by videoWidth
                        height: 420,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.grey,
                          border: Border.all(color: Colors.black, width: 2), // Video container border
                        ),
                        child: VideoPlayerWidget(videoUrl: 'assets/video/here.mp4',), // Replace with VideoPlayer_Widget
                      ),
                      SizedBox(width: 20),

                      // Containers for Symbol and Audio Player
                      Column(
                        children: [
                          //symbol
                          Container(
                            height: 200, // Adjust the square size
                            width: 200, // Adjust the square size
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: const Color.fromARGB(255, 255, 255, 255), // Symbol container color
                              border: Border.all(color: Colors.black, width: 3), // Symbol container border
                            ),
                            child: Center(child: 
                              Text(symbol, 
                                style: TextStyle(
                                        fontSize: 100,  // Adjust the font size here
                                        color: Colors.black,  // Optionally change the text color
                                        fontWeight: FontWeight.bold  // Optionally make the text bold
                                      ),
                              )
                            ), 
                          ),
                          SizedBox(height: 20),

                          //audio player
                          Container(
                            height: 200,
                            width: 200,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: const Color.fromARGB(255, 255, 255, 255),
                              border: Border.all(color: Colors.black, width: 3),
                            ),
                            child: AudioPlayerWidget(audioPath: 'assets/audio/yo.mp3'), // Using AudioPlayerWidget directly
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),

                // Container for Word and Description
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 1085,
                      height: 215,
                      padding: EdgeInsets.all(16), // Adjust padding for content spacing
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 255, 255, 255), // Word container background color
                        borderRadius: BorderRadius.circular(10.0),
                        border: Border.all(color: Colors.black, width: 3), // Word container border
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            word,
                            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: const Color.fromARGB(255, 0, 0, 0)),
                          ),
                          SizedBox(height: 10),
                          Text(
                            description,
                            style: TextStyle(fontSize: 18, color: const Color.fromARGB(179, 0, 0, 0)),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
