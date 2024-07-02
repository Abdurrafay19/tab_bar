import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.purple,
            title: const Text('Tab Bar Demo'),
            bottom: const TabBar(tabs: [
              Text('child 1'),
              Text('child 2'),
              Text('child 3'),
              Text('child 4'),
            ]),
            actions: [
              PopupMenuButton(
                  icon: const Icon(Icons.menu),
                  itemBuilder: (context,) => [
                    const PopupMenuItem(value: 1 ,child: Text('New Item 1')),
                    const PopupMenuItem(value: 2 ,child: Text('New Item 2')),
                    const PopupMenuItem(value: 3 ,child: Text('New Item 3')),
                    const PopupMenuItem(value: 4 ,child: Text('New Item 4')),
                    const PopupMenuItem(value: 5 ,child: Text('New Item 5')),
                  ]),
            ],
          ),
          body: const TabBarView(
            children: [
              Text('1'),
              Text('2'),
              Text('3'),
              Text('4'),
            ],
          ),
        ));
  }
}
