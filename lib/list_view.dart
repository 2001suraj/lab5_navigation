import 'package:flutter/material.dart';
import 'package:lab6/individual_page.dart';

class ListViewWidget extends StatelessWidget {
  ListViewWidget({super.key});

  List<String> name = [
    'apple',
    'orange',
    'banana',
    'grapes',
    'mango',
  ];
  List<String> images = [
    'https://blog-images-1.pharmeasy.in/blog/production/wp-content/uploads/2022/05/03114105/7-5.jpg',
    'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e3/Oranges_-_whole-halved-segment.jpg/640px-Oranges_-_whole-halved-segment.jpg',
    'https://domf5oio6qrcr.cloudfront.net/medialibrary/6372/202ebeef-6657-44ec-8fff-28352e1f5999.jpg',
    'https://urbanbazaar.com.np/wp-content/uploads/2021/05/grapes.jpg',
    'https://www.svz.com/wp-content/uploads/2018/05/Mango.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListView"),
      ),
      body: ListView.builder(
          itemCount: name.length,
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            return ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => IndividualPage(
                      image: images[index],
                      name: name[index],
                    ),
                  ),
                );
              },
              leading: Image(
                height: 30,
                width: 60,
                image: NetworkImage(
                  images[index],
                ),
                fit: BoxFit.contain,
              ),
              title: Text(name[index]),
            );
          }),
    );
  }
}
