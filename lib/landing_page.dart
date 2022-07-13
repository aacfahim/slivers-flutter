import 'package:flutter/material.dart';
import 'package:sliver/call_log.dart';
import 'package:sliver/slivers.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int index = 0;

  List pages = [
    Slivers(),
    ListViewContents(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: pages[index],
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.history),
              label: 'Log',
            ),
          ],
          onTap: (int index) {
            setState(() {
              this.index = index;
            });
          },
        ),
      ),
    );
  }
}
