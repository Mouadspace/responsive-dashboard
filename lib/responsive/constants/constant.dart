import 'package:flutter/material.dart';

const primaryColor = Color(0xffEBEEF3);
const sideBarColor = Color(0xff353B55);
const color1 = Color(0xff738CF1);
const color2 = Color(0xffFC9898);
const color3 = Color(0xff6DE1CC);
const color4 = Color(0xffE9F8F7);

var mySideBar = Drawer(
  backgroundColor: sideBarColor,
  child: Column(
    children: [
      SizedBox(
        height: 130,
        child: DrawerHeader(
          padding: const EdgeInsets.all(0),
          margin: const EdgeInsets.all(20),
          child: Container(
            decoration: BoxDecoration(
              color: color1,
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
      ),
      const ListTile(
        leading: Icon(Icons.home_filled, color: Colors.white),
        title: Text('H O M E', style: TextStyle(color: Colors.white)),
      ),
      const ListTile(
        leading: Icon(Icons.filter_alt_rounded, color: Colors.white),
        title: Text('F I L T R E', style: TextStyle(color: Colors.white)),
      ),
      const ListTile(
        leading: Icon(Icons.manage_accounts_rounded, color: Colors.white),
        title:
            Text('M A N A G E M E N T', style: TextStyle(color: Colors.white)),
      )
    ],
  ),
);
