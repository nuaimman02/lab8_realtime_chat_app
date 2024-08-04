import 'package:flutter/material.dart';

class CustomFormfield extends StatefulWidget {
  final String hintText;
  final double height;
  final RegExp validationRegEx;
  final bool obsecureText;
  final void Function(String?) onSaved;

  const CustomFormfield({super.key, required this.hintText, required this.height, required this.validationRegEx, this.obsecureText = false, required this.onSaved});

  @override
  State<CustomFormfield> createState() => _CustomFormfieldState();
}

class _CustomFormfieldState extends State<CustomFormfield> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.height,
      child: TextFormField(
        onSaved: widget.onSaved,
        obscureText: widget.obsecureText,
        validator: (value){
          if(value != null && widget.validationRegEx.hasMatch(value)){
            return null;
          }
          return "Enter a valid ${widget.hintText.toLowerCase()}";
        },
        decoration: InputDecoration(
          hintText: widget.hintText,
          border: const OutlineInputBorder(),
        ),
      ),
    );
  }
}
