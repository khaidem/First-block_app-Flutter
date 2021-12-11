import 'package:flutter/material.dart';

import './router/router.dart';
import './app/app.dart';

void main() {
  final _appRouter = AppRouter();
  runApp(MyApp(appRouter: _appRouter));
}
