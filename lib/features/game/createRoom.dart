import 'package:flutter/material.dart';
import '../../constants/widgets.dart';

class CreateRoomScreen extends StatefulWidget {
  const CreateRoomScreen({super.key});

  @override
  State<CreateRoomScreen> createState() => _CreateRoomScreenState();
}

class _CreateRoomScreenState extends State<CreateRoomScreen> {
  final _nameController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }

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
              CustomTextField(
                text: 'Enter your nickname',
                Controller: _nameController,
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
