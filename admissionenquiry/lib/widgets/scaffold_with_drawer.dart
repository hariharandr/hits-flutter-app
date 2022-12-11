import 'package:flutter/material.dart';

class ScaffoldWithDrawer extends StatelessWidget {
  final Widget title;
  final Widget body;

  const ScaffoldWithDrawer(
      {super.key, required this.body, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: const Color(0xff2e3745),
          toolbarHeight: 125.0,
          title: Column(
            children: [
              const SizedBox(
                height: 15.0,
              ),
              title,
            ],
          )),
      body: body,
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Drawer Header'),
            ),
            ListTile(
              title: const Text('Item 1'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Item 2'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
