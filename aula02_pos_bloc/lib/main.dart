import 'dart:io';

import 'package:aula02_pos_bloc/app/android_app.dart';
import 'package:aula02_pos_bloc/app/ios_app.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Platform.isAndroid? const AndroidApp() : const IosApp());
}

/*
Em caso de também ter versão WEB

import 'package:flutter/foundation.dart' show kIsWeb;
import 'dart:io';
import 'package:aula02_pos_bloc/app/android_app.dart';
import 'package:aula02_pos_bloc/app/ios_app.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(kIsWeb ||Platform.isAndoid ? const AndroidApp() : const IosApp());
}





 */