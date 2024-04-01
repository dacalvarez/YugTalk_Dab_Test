import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:test_drive/Screens/MeMode.dart';

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
          //primaryColor: const Color.fromARGB(0, 232, 194, 33),
          useMaterial3: false,
        ),
        useInheritedMediaQuery: true, // keep this for device_preview to work
        home: const MeMode(),
      ),
    ),
  );
}