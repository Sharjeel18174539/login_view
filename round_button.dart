import 'package:flutter/material.dart';
class RoundedButton extends StatelessWidget {
  RoundedButton({required this.color, required this.title, required this.onPressed});

  final Color color;
  final String title;
  final VoidCallback onPressed;
  // Function animation;

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.symmetric(vertical:16.0),
      child: Material(
          elevation: 5.0,
          borderRadius: BorderRadius.circular(25),
          color: color,
          child: MaterialButton(
            minWidth: 200,
            // login in page
            onPressed: onPressed,
            height: 42,
            child: Text(title,
              style: TextStyle(
                fontSize: 25.0,
              ),
            ),

          )
      ),
    );
  }
}

