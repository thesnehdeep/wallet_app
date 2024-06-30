import 'package:flutter/material.dart';

class TransactionButton extends StatelessWidget {
  final String title;
  final Color color;
  final VoidCallback onPressed;

  const TransactionButton({
    required this.title,
    required this.color,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(backgroundColor: color),
      onPressed: onPressed,
      child: Text(title),
    );
  }
}
