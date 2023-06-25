import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mobile_app_ui/grid.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 59, 34, 115),
      appBar: AppBar(
        actions: const [Opacity(opacity: 1)],
        backgroundColor: const Color.fromARGB(255, 59, 34, 115),
        elevation: 0,
      ),
      body: Column(
        children: [
          Image.asset(
            'lib/Images/photo.png',
            width: 250,
            height: 130,
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'Nancy Tolbert',
            style: TextStyle(
                fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'Macbook Pro 2014',
            style: TextStyle(color: Colors.white, fontSize: 14),
          ),
          const SizedBox(
            height: 10,
          ),
          const ElevatedButton(
            onPressed: null,
            child: Text(
              'UI/UX Designer',
              style: TextStyle(color: Colors.white),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Column(
                      children: const [
                        Text(
                          "Current",
                          style: TextStyle(color: Colors.grey),
                        ),
                        Text(
                          "Projects",
                          style: TextStyle(color: Colors.grey),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          '4',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                    const SizedBox(
                      width: 45,
                    ),
                    Column(
                      children: const [
                        Text(
                          'Hours',
                          style: TextStyle(color: Colors.grey),
                        ),
                        Text(
                          "Worked",
                          style: TextStyle(color: Colors.grey),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          '80',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      width: 45,
                    ),
                    Column(
                      children: const [
                        Text(
                          'Upgrades',
                          style: TextStyle(color: Colors.grey),
                        ),
                        Text(
                          "Stage",
                          style: TextStyle(color: Colors.grey),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          '1',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 45,
                    ),
                    Column(
                      children: const [
                        Text(
                          'Upgrades',
                          style: TextStyle(color: Colors.grey),
                        ),
                        Text(
                          "Cost",
                          style: TextStyle(color: Colors.grey),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          '\$' '923',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: EdgeInsets.fromWindowPadding(
              WindowPadding.zero,
              double.negativeInfinity,
            ),
            child: Column(
              children: const [
                Grid(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
