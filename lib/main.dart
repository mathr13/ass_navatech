import 'package:flutter/material.dart';

import 'albums_main.dart';
import 'src/injections.dart';

void main() async {
  await injections();
  runApp(AlbumsApp());
}