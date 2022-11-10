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
      color: const Color.fromARGB(255, 195, 217, 247),
      padding: const EdgeInsets.only(left: 0.0, top: 15.0, right: 0.0),
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
                    child: Padding(
                      padding: const EdgeInsets.all(5),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(35),
                        child: Image.asset(
                          'assets/images/profile_image.jpg',
                          height: 150.0,
                          width: 150.0,
                        ),
                      ),
                    ),
                  ),
                  // const SizedBox(
                  //   height: 5.0,
                  // ),
                  const Text(
                    "Stephanie Milton",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    padding: const EdgeInsets.all(10.0),
                    width: 80,
                    height: 40,
                    decoration: BoxDecoration(
                        color: Colors.blue[300],
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
              height: screenHeight - 400.0,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(75),
                    topRight: Radius.circular(75)),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 45.0),
                child: Container(
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  height: screenHeight - 300.0,
                  child: ListView(
                    itemExtent: 40.0,
                    children: [
                      _buildList(
                          0xfffcf4c5,
                          Colors.orangeAccent,
                          Icons.forum_outlined,
                          "Start a chat",
                          Icons.arrow_forward_ios),
                      const SizedBox(
                        height: 20,
                      ),
                      _buildList(0xffd0f1c5, Colors.green, Icons.person,
                          "Expert replies", Icons.arrow_forward_ios),
                      const SizedBox(
                        height: 20,
                      ),
                      _buildList(
                          0xfffbdec9,
                          Colors.redAccent,
                          Icons.star_border,
                          "Review Ratings",
                          Icons.arrow_forward_ios),
                      const SizedBox(
                        height: 20,
                      ),
                      _buildList(0xffc6e0fd, Colors.blueAccent, Icons.list,
                          "Asked Questions", Icons.arrow_forward_ios),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildList(int color, Color iconcolor, IconData iconname, String text,
      IconData trailing) {
    return ListTile(
      leading: Container(
          height: 40.0,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Color(color),
            borderRadius: const BorderRadius.all(Radius.circular(5)),
          ),
          child: Icon(
            iconname,
            color: iconcolor,
          )),
      title: Text(text),
      trailing: IconButton(onPressed: () {}, icon: Icon(trailing)),
    );
  }
}
