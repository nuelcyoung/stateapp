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
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      color: Colors.indigo[100],
      padding: const EdgeInsets.only(left:15.0,top: 15.0,right: 15.0),
      child: Stack(
        children: [
          Positioned(
            width: screenWidth * 1.0,
            top: 0,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(500),
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
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
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
          ),
          Positioned(
            bottom: 0,
            child: Container(
              width: screenWidth * 1.0,
              height: screenHeight * 0.4,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.all(30),
                    color: Colors.white,
                    child: ListTile(
                      title: const Text(
                        "Start a Chat",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      leading: const Icon(Icons.message),
                      trailing: IconButton(
                          onPressed: (() {}), icon: const Icon(Icons.forward)),
                    ),
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
