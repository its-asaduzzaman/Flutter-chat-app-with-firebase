import 'package:flutter/material.dart';


class RoundedButton extends StatelessWidget {
  final String label;
  final Color buttonColor;
  final VoidCallback onTap;

  const RoundedButton(
      {Key? key,
        required this.label,
        required this.buttonColor,
        required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: buttonColor,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: onTap,
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            label,
          ),
        ),
      ),
    );
  }
}
