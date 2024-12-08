import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Emoji extends StatelessWidget {
  final String face;
  const Emoji({
    super.key,
    required this.face
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue[600],
        borderRadius: BorderRadius.circular(12)
      ),
      padding: EdgeInsets.all(12),
      child: Center(
        child: Text(
          face,
          style: TextStyle(
            fontSize: 24
          ),
        ),
      ),
    );
  }
}
