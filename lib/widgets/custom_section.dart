import 'package:flutter/material.dart';

class CustomSection extends StatelessWidget {
  final String title;
  final Widget child;
  const CustomSection({super.key, required this.title, required this.child});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 16,
            color: Colors.grey.shade600,
          ),
        ),
        const SizedBox(height: 20),
        child
      ],
    );
  }
}
