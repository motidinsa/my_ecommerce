import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/material.dart';

class UserInputComponent extends StatefulWidget {
  final String attributeName;
  final String attributeType;
  final bool? hasFixedOption;

  const UserInputComponent(
      {Key? key,
      required this.attributeName,
      required this.attributeType,
      this.hasFixedOption})
      : super(key: key);

  @override
  State<UserInputComponent> createState() => _UserInputComponentState();
}

class _UserInputComponentState extends State<UserInputComponent> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: widget.attributeType == 'text'
          ? TextInputType.text
          : TextInputType.number,
      // style: Text,
      // onChanged: (text) => name = text,
      decoration: InputDecoration(
        label: Text(widget.attributeName),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            width: 0.75,
            color: Colors.grey,
          ),
          borderRadius: SmoothBorderRadius(
            cornerRadius: 10,
            cornerSmoothing: 1,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xff5956E9),
          ),
          borderRadius: SmoothBorderRadius(
            cornerRadius: 10,
            cornerSmoothing: 1,
          ),
        ),
      ),
    );
  }
}
