import 'package:flutter/material.dart';
import 'package:tiktaw/features/game/createRoom.dart';
import 'package:tiktaw/features/game/joinRoom.dart';
import 'package:tiktaw/features/main/main_screen.dart';

import 'constants/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: bgColor,
      ),
      debugShowCheckedModeBanner: false,
      title: 'Tic toe  taw',
      routes: {
        'create': (context) => const CreateRoomScreen(),
        JoinRoomScreen.routeName: (context) => const JoinRoomScreen(),
      },
      home: const Main(),
    );
  }
}
//00:29:05