import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/app/services/locator.dart';

import 'app/app.widget.dart';

Future<void> main() async {
  setupDependencies();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const AppWidget());
}
