import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:lab6/third_page.dart';

class SecondPage extends StatefulWidget {
  SecondPage({super.key, required this.address, required this.email, required this.name});
  final String name;
  final String email;
  final String address;

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  final TextEditingController first = TextEditingController();

  final TextEditingController second = TextEditingController();

  double? sum;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Second page")),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text("Name : ${widget.name}"),
            Text("Email : ${widget.email}"),
            Text("Address : ${widget.address}"),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: first,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  hintText: 'Enter 1st number : ',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: second,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  hintText: 'Enter 2nd  number : ',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                ),
              ),
            ),
            MaterialButton(
              color: Colors.purple,
              onPressed: () {
                setState(() {
                  sum = double.parse(first.text) + double.parse(second.text);
                });
              },
              child: const Text(
                "add",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            Text('sum =  $sum'),
            MaterialButton(
              color: Colors.purple,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ThirdPage(),
                  ),
                );
              },
              child: const Text(
                "Go to third  Page",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
