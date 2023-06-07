import 'package:counter_with_bloc/ui/animated_page.dart';
import 'package:counter_with_bloc/ui/counter_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> pages = [RainbowPage(),CounterPage()];
    return DefaultTabController(
      length: pages.length,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Bloc"),
          centerTitle: true,
          bottom: const TabBar(
            tabs: [
              Tab(
                text: "Rainbow",
              ),
              Tab(
                text: "Counter",
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: pages,
        ),
      ),
    );
  }
}
