import 'dart:developer' as log_print;

import 'package:dbminer_animal/helper/db_helper.dart';
import 'package:flutter/material.dart';

import '../helper/api_helper.dart';
import '../helper/imagelist.dart';
import '../modal/animal_modal_data.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Animal> allAnimal = [];

  @override
  void initState() {
    super.initState();
    // DBhelper.dbBhelper.fetchAlldata();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff000000),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 120,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      // borderRadius: BorderRadius.only(
                      //     topLeft: Radius.circular(15),
                      //     topRight: Radius.circular(15)),
                      color: Colors.grey),
                  child: Image.asset(
                    'assets/image/h1.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  height: 50,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(0), bottomRight: Radius.circular(0)), color: Colors.white),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: const [
                        Text(
                          'Elephant',
                          style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Container(
                  height: 120,
                  width: double.infinity,
                  decoration: const BoxDecoration(color: Colors.grey),
                  child: Image.asset(
                    'assets/image/h2.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  height: 50,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(0), bottomRight: Radius.circular(0)), color: Colors.white),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: const [
                        Text(
                          'Lion',
                          style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Container(
                  height: 120,
                  width: double.infinity,
                  decoration: const BoxDecoration(color: Colors.grey),
                  child: Image.asset(
                    'assets/image/h3.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  height: 50,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(0), bottomRight: Radius.circular(0)), color: Colors.white),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: const [
                        Text(
                          'Deer',
                          style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                        height: 50,
                        width: 60,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.white30),
                        child: IconButton(
                            onPressed: () {
                              Navigator.pushNamed(context, 'AnimalPage');
                            },
                            icon: const Icon(
                              Icons.arrow_forward_outlined,
                              color: Colors.white,
                              size: 30,
                            ))),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
