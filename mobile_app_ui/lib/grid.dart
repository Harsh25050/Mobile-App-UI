import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class Grid extends StatefulWidget {
  const Grid({super.key});

  @override
  State<Grid> createState() => _GridState();
}

class _GridState extends State<Grid> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      height: 300,
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 1,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1, childAspectRatio: 1),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(top: 0, bottom: 0),
            child: Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.8), // Shadow color
                    spreadRadius: 2, // Spread radius
                    blurRadius: 5, // Blur radius
                    offset: const Offset(0, 3), // Offset in x and y direction
                  ),
                ],
                borderRadius: BorderRadius.circular(24),
                color: const Color.fromARGB(255, 83, 54, 146),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CircularPercentIndicator(
                        radius: 30,
                        progressColor: Colors.amber,
                        percent: 0.72,
                        center: const Text(
                          '72%',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "CPU:",
                            style: TextStyle(color: Colors.white),
                          ),
                          Text("2.5 GHz Intel Core",
                              style: TextStyle(color: Colors.grey.shade400))
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircularPercentIndicator(
                        radius: 30,
                        progressColor: Colors.green,
                        percent: 0.32,
                        center: const Text(
                          '32%',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "RAM:",
                            style: TextStyle(color: Colors.white),
                          ),
                          Text(
                            "16 GB 1600MHz DDR3",
                            style: TextStyle(color: Colors.grey.shade400),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircularPercentIndicator(
                        radius: 30,
                        progressColor: Colors.red,
                        percent: 0.93,
                        center: const Text(
                          '93%',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Graphics:",
                            style: TextStyle(color: Colors.white),
                          ),
                          Text(
                            "NIVIDIA GeForce GT 750M 2 GB",
                            style: TextStyle(color: Colors.grey.shade400),
                          )
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      ElevatedButton(
                          onPressed: null,
                          child: Text(
                            "Show Specs Upgrade",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ))
                    ],
                  ),
                ],
              ),
              // height: ,
              // width: 150,
            ),
          );
        },
      ),
    );
  }
}
