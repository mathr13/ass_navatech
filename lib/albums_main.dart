import 'package:flutter/material.dart';

import 'src/app_routes.dart';

class AlbumsApp extends StatelessWidget {

  AlbumsApp({super.key});

  final _routes = AppRoutes();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _routes.config()
    );
  }

}