import 'package:flutter/material.dart';
import 'package:test_drive/Widgets/Drawer_Widget.dart';
import 'package:test_drive/Widgets/LangToggle_Widget.dart';
import 'package:test_drive/Widgets/ExploreToggle_Widget.dart';
import 'package:test_drive/Modules/CommBoard/CommBoard_Mod.dart';

class EditMode extends StatefulWidget {
  const EditMode({super.key});

  @override
  State<EditMode > createState() => _MyWidgetState();
}

class _MyWidgetState extends State<EditMode > {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Me Mode'),
        centerTitle: true,
        leading: DrawerWidget(),
        actions: [
          ExploreToggle_Widget(isEditMode: true),
          Padding(padding: EdgeInsets.only(left: 10)),
          LangToggle_Widget(isEditMode: true),
          Padding(padding: EdgeInsets.only(left: 10)),
        ],
      ),
      body: CommBoard_Mod(),
    );
  }
}


