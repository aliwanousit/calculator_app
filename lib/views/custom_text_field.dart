import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
   CustomTextField({super.key});

final TextEditingController numcontroller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(
        title: const Text('Title'),
      ),
      
      body: Container(
        child: Column(
          children: [
            TextField(
              keyboardType: TextInputType.number,
            )
          ],
        ),
      ),
    );
  }
}