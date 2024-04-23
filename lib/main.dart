import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';                    
import 'package:test_drive/Screens/MeMode.dart';
//import 'package:test_drive/Modules/PopupForm/PopupForm_Mod.dart';  

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MaterialApp(
        title: "YugTalk App",
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: false,
        ),
        useInheritedMediaQuery: true, // keep this for device_preview to work
        home: const MeMode(), //temporary display for me mode module "const MeMode()" or "PopupForm_Mod()"
      ),
    ),
  );
}




