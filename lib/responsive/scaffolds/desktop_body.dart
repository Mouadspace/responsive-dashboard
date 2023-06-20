import 'package:flutter/material.dart';
import 'package:responsive/widgets/custom_section.dart';
import '../../widgets/dashboard.dart';
import '../../widgets/header.dart';
import '../constants/constant.dart';

class DesktopBody extends StatelessWidget {
  const DesktopBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          mySideBar,
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Header(),
                  Expanded(
                    flex: 10,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 20),
                        const Text(
                          'Hello!  Mouad',
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'serif',
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'Never put off till tomorrow what can be done today!',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey.shade600,
                          ),
                        ),
                        const SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Dashboard(),
                            CustomSection(
                              title: 'Automatically assigned',
                              child: Container(
                                width: MediaQuery.of(context).size.width / 4,
                                height: 180,
                                decoration: BoxDecoration(
                                  color: sideBarColor,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
