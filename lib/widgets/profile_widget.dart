import 'package:flutter/material.dart';

class ProfileWidget extends StatefulWidget {
  const ProfileWidget({super.key});

  @override
  State<ProfileWidget> createState() => _ProfileWidgetState();
}

class _ProfileWidgetState extends State<ProfileWidget> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Container(
      color: Colors.white,
      child: Stack(
        children: [
          Container(
            color: Colors.indigo[100],
            height: screenHeight * 0.5,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Image.network(
                        'https://cdn.pixabay.com/photo/2017/08/01/08/29/woman-2563491_960_720.jpg',
                        height: 200.0,
                      )),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                const Text(
                  "Stephanie Milton",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Container(
                  padding: const EdgeInsets.all(20),
                  width: 150,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.blue[400],
                      borderRadius: BorderRadius.circular(25)),
                  child: const Text(
                    "Favorite",
                    textAlign: TextAlign.center,
                  ),
                )
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40)),
              ),
              color: Colors.blue,
              height: screenHeight * 0.5,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ListTile(
                    title: const Icon(Icons.message),
                    leading: const Text(
                      "Start a Chat",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    trailing: IconButton(
                        onPressed: (() {}), icon: const Icon(Icons.forward)),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
