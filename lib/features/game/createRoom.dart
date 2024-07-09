import 'package:flutter/material.dart';
import 'package:tiktaw/constants/colors.dart';

import '../../constants/widgets.dart';

class CreateRoomScreen extends StatefulWidget {
  const CreateRoomScreen({super.key});

  @override
  State<CreateRoomScreen> createState() => _CreateRoomScreenState();
}

class _CreateRoomScreenState extends State<CreateRoomScreen> {
  final _nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Padding(
        padding: const EdgeInsets.all(10.0).copyWith(left: 20, right: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.20,
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
                  text: 'Create ',
                  children: [
                    TextSpan(text: 'Room'),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.03,
              ),
              Container(
                decoration: const BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 5,
                      color: Colors.blue,
                      spreadRadius: 2,
                    ),
                  ],
                ),
                child: TextField(
                  controller: _nameController,
                  decoration: const InputDecoration(
                    filled: true,
                    fillColor: bgColor,
                    hintText: 'Enter your nickname',
                    hintStyle: TextStyle(
                      color: Colors.grey,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.03,
              ),
              CustomButton(
                text: 'Create',
                func: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}