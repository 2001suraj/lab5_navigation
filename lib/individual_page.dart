import 'package:flutter/material.dart';

class IndividualPage extends StatelessWidget {
  const IndividualPage({super.key, required this.image, required this.name});
  final String name;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
      ),
      body: Column(
        children: [
          Image(
            height: 300,
            width: 400,
            fit: BoxFit.cover,
            image: NetworkImage(image),
          ),
          Text(name + " Description ")
        ],
      ),
    );
  }
}
