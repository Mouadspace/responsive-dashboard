import 'package:flutter/material.dart';

import '../constants/constant.dart';

class MobileBody extends StatelessWidget {
  const MobileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: primaryColor),
      drawer: mySideBar,
      body: const Center(
        child: Text("mobile"),
      ),
    );
  }
}
