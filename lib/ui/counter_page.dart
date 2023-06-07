import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "0",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 38),
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FloatingActionButton(
                  backgroundColor: Colors.red,
                  child: const Text(
                    '-',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
                  ),
                  onPressed: () { }),
              const SizedBox(
                width: 15,
              ),
              FloatingActionButton(
                  backgroundColor: Colors.blue,
                  child: const Icon(
                    Icons.restart_alt,
                    color: Colors.white,
                    size: 24,
                  ),
                  onPressed: () {}),
              const SizedBox(
                width: 15,
              ),
              FloatingActionButton(
                  backgroundColor: Colors.green,
                  child: const Text(
                    '+',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
                  ),
                  onPressed: () {}),
            ],
          ),
        ],
      ),
    );
  }
}
