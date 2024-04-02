import 'package:flutter/material.dart';
import 'package:test_drive/Widgets/ChildLock_Widget.dart';
import 'package:test_drive/Widgets/LangToggle_Widget.dart';
import 'package:test_drive/Widgets/ExploreToggle_Widget.dart';
import 'package:test_drive/Modules/CommBoard/CommBoard_Mod.dart';

class MeMode extends StatefulWidget {
  const MeMode({super.key});

  @override
  State<MeMode> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MeMode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Me Mode'),
        centerTitle: true,
        leading: ChildLock_Widget(),
        actions: [
          ExploreToggle_Widget(),
          Padding(padding: EdgeInsets.only(left: 10)),
          LangToggle_Widget(),
          Padding(padding: EdgeInsets.only(left: 10)),
        ],
      ),
      body: CommBoard_Mod(),
    );
  }
}


