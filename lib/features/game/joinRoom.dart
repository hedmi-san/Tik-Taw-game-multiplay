import 'package:flutter/material.dart';
import 'package:tiktaw/constants/widgets.dart';

class JoinRoomScreen extends StatefulWidget {
  static String routeName = '/join-room';
  const JoinRoomScreen({super.key});

  @override
  State<JoinRoomScreen> createState() => _JoinRoomScreenState();
}

class _JoinRoomScreenState extends State<JoinRoomScreen> {
  final _nameController = TextEditingController();
  final _gameIDController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        body: Padding(
          padding: const EdgeInsets.all(10.0).copyWith(left: 20, right: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.sizeOf(context).height * 0.15,
                ),
                const Text.rich(
                  style: TextStyle(
                      fontSize: 70,
                      color: Colors.white,
                      shadows: [
                        Shadow(
                          blurRadius: 40,
                          color: Colors.blue,
                        )
                      ],
                      fontWeight: FontWeight.w600),
                  TextSpan(
                    text: 'Join ',
                    children: [
                      TextSpan(text: 'Room'),
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.sizeOf(context).height * 0.03,
                ),
                CustomTextField(
                  Controller: _nameController,
                  text: 'Enter your nickname',
                ),
                SizedBox(
                  height: MediaQuery.sizeOf(context).height * 0.03,
                ),
                CustomTextField(
                  Controller: _gameIDController,
                  text: 'Enter Game ID',
                ),
                SizedBox(
                  height: MediaQuery.sizeOf(context).height * 0.03,
                ),
                CustomButton(
                  text: 'Join',
                  func: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
