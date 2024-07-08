import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pizza_app/components/macro.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 228, 220, 220),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(height: 30),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.width - (40),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey,
                        offset: Offset(3, 3),
                        blurRadius: 5),
                  ],
                  image: DecorationImage(
                    image: AssetImage('assets/1.png'),
                  ),
                ),
              ),
              SizedBox(height: 30),
              Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey,
                          offset: Offset(3, 3),
                          blurRadius: 5),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              flex: 2,
                              child: Text(
                                "Truffle Pizza",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Align(
                                alignment: Alignment.centerRight,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      "\$12.00",
                                      style: TextStyle(
                                          color: Colors.blue,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "\$15.00",
                                      style: TextStyle(
                                          color: Colors.grey,
                                          decoration:
                                              TextDecoration.lineThrough,
                                          fontSize: 11,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 12),
                        Row(
                          children: [
                            const MyMacroWidget(
                              title: "Calories",
                              value: 467,
                              icon: FontAwesomeIcons.fire,
                            ),
                            SizedBox(width: 5),
                            const MyMacroWidget(
                              title: "Protein",
                              value: 39,
                              icon: FontAwesomeIcons.dumbbell,
                            ),
                            SizedBox(width: 5),
                            const MyMacroWidget(
                              title: "Fat",
                              value: 21,
                              icon: FontAwesomeIcons.droplet,
                            ),
                            SizedBox(width: 5),
                            const MyMacroWidget(
                              title: "Carbs",
                              value: 36,
                              icon: FontAwesomeIcons.wheatAwn,
                            ),
                          ],
                        ),
                        SizedBox(height: 30),
                        SizedBox(
                          width: MediaQuery.of(context).size.width,
                          height: 50,
                          child: TextButton(
                              onPressed: () {},
                              style: TextButton.styleFrom(
                                  elevation: 3.0,
                                  backgroundColor: Colors.black,
                                  foregroundColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10))),
                              child: const Text("Buy now",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600))),
                        )
                      ],
                    ),
                  ))
            ],
          ),
        ));
  }
}
