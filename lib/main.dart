import 'package:flutter/material.dart';

import 'app/app.dart';
import 'app/di.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  initAppModule();
  runApp(MyApp());
}
