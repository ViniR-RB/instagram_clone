// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class TextFieldCommun extends StatefulWidget {
  const TextFieldCommun(
    this.isPassword, {
    Key? key,
    required this.controller,
    required this.hinText,
    required this.keyboardType,
  }) : super(key: key);
  final TextEditingController controller;
  final String hinText;
  final TextInputType keyboardType;
  final bool? isPassword;

  @override
  State<TextFieldCommun> createState() => _TextFieldCommunState();
}

class _TextFieldCommunState extends State<TextFieldCommun> {
  bool obscureText = true;
  @override
  void initState() {
    if (widget.isPassword == false) {
      setState(() {
        obscureText = false;
      });
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final outlinedborder = OutlineInputBorder(
      borderSide: Divider.createBorderSide(context),
    );
    return TextFormField(
      controller: widget.controller,
      decoration: InputDecoration(
          hintText: widget.hinText,
          border: outlinedborder,
          focusedBorder: outlinedborder,
          errorBorder: outlinedborder,
          enabledBorder: outlinedborder,
          filled: true,
          contentPadding: const EdgeInsets.all(8),
          suffixIcon: widget.isPassword == true
              ? InkWell(
                  borderRadius: BorderRadius.circular(23),
                  onTap: () {
                    setState(() {
                      obscureText = !obscureText;
                    });
                  },
                  child: obscureText
                      ? const Icon(Icons.visibility)
                      : const Icon(Icons.visibility_off),
                )
              : null),
      obscureText: obscureText,
      keyboardType: widget.keyboardType,
    );
  }
}
