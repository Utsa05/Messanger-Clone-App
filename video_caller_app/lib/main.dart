import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'video_app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(const VideoCallApp());
}
