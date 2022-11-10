import 'package:flutter/material.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ContactList(),
    );
  }
}

class ContactList extends StatefulWidget {
  const ContactList({super.key});

  @override
  State<ContactList> createState() => _ContactListState();
}

class _ContactListState extends State<ContactList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return ListTile(
            leading: ClipRRect(
                borderRadius: BorderRadius.circular(30.0),
                child: Image.asset(
                  'assets/images/baby.jpg',
                  width: 60.0,
                  height: 60.0,
                )),
            title: const Text("Nuel Young"),
            subtitle: const Text("+2348134713948"),
            trailing: ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(
                  Icons.close_rounded,
                  color: Colors.red,
                ),
                label: const Text(
                  "Add",
                  style: TextStyle(color: Colors.red),
                )),
          );
        });
  }
}
