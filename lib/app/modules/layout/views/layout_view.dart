import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/layout_controller.dart';

class LayoutView extends GetView<LayoutController> {
  const LayoutView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      appBar: AppBar(
        title: const Text('LayoutView'),
        actions: [
          Icon(Icons.abc_rounded),
          Icon(Icons.notification_add),
        ],
        centerTitle: true,
      ),
      drawer: Drawer(
        child: Column(
          children: [
            ListTile(
              title: Text("data"),
            ),
            ListTile(
              title: Text("data"),
            ),
            ListTile(
              title: Text("data"),
            )
          ],
        ),
      ),
      body: IndexedStack(
        index: 2,
        children: [
          Container(
            color: Colors.red,
          ),
          Container(
            color: Colors.green,
          ),
          Container(
            color: Colors.yellow,
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        fixedColor: Colors.grey,
        backgroundColor: Colors.red,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            label: "hi",
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: "hi",
            icon: Icon(Icons.menu),
          ),
          BottomNavigationBarItem(
            label: "hi",
            icon: Icon(Icons.abc),
          ),
          BottomNavigationBarItem(
            label: "hi",
            icon: Icon(Icons.abc),
          ),
        ],
      ),
    );
  }
}
