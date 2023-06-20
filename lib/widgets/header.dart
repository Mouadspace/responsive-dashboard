import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
        SizedBox(
          width: 250,
          child: TextField(
            decoration: InputDecoration(
              prefixIcon: const Icon(Icons.search),
              hintText: "Search",
              filled: true,
              fillColor: Colors.white,
              isDense: true,
              contentPadding: const EdgeInsets.all(10),
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(25),
              ),
            ),
          ),
        ),
        const SizedBox(width: 100),
        const Icon(
          Icons.settings,
          color: Colors.grey,
        ),
        const SizedBox(width: 30),
        Container(
          width: 40,
          decoration: const BoxDecoration(
              color: Colors.deepPurple, shape: BoxShape.circle),
        )
      ]),
    );
  }
}
