import 'package:flutter/cupertino.dart';
import 'package:flutter_gemini/flutter_gemini.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'app_widget.dart';

Future<void> main() async {
  await dotenv.load();
  Gemini.init(apiKey: dotenv.env['GEMINI_API_KEY']!);
  runApp(MyApp());
}
