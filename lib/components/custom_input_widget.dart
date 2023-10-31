import 'package:flutter/material.dart';

class CustomInputWidget extends StatelessWidget {
  TextEditingController controller;
  String? title;

  CustomInputWidget({super.key, required this.controller, this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if(title!=null)
        Text(title!, style: const TextStyle(fontSize: 16, color: Colors.white)),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.only(left: 14.0),
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: const Color.fromARGB(255, 28, 26, 26)),
            borderRadius: const BorderRadius.all(Radius.circular(5.0)),
          ),
          child: TextFormField(
            style: const TextStyle(fontSize: 14),
            decoration: const InputDecoration(
              hintStyle: TextStyle(color: Colors.black26),
              border: InputBorder.none,
              suffixIconConstraints:
                  BoxConstraints(maxHeight: 24, maxWidth: 48),
            ),
            controller: controller,
          ),
        ),
      ],
    );
  }
}
