import 'package:flutter/material.dart';

import '../../constants/widgets.dart';
import '../game/joinRoom.dart';

class Main extends StatelessWidget {
  const Main({super.key});
  void routing(BuildContext context, String route) {
    Navigator.pushNamed(context, route);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomButton(
                text: 'Create Room',
                func: () {
                  routing(context, 'create');
                },
              ),
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.04,
              ),
              CustomButton(
                text: 'Join Room',
                func: () {
                  routing(context, JoinRoomScreen.routeName);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
