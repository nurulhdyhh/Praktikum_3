import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Card List'),
        ),
        body: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Map<String, String>> data = [
    {
      'name': 'Nurul',
      'hobby': 'Membaca',
      'imageURL':
          'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
    },
    {
      'name': 'Hidayatul',
      'hobby': 'Menulis cerita',
      'imageURL':
          'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
    },
    {
      'name': 'Hasanah',
      'hobby': 'Merajut',
      'imageURL':
          'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
    },
  ];

  MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: data.length,
      itemBuilder: (BuildContext context, int index) {
        return CardItem(
          name: data[index]['name']!,
          hobby: data[index]['hobby']!,
          imageURL: data[index]['imageURL']!,
        );
      },
    );
  }
}

class CardItem extends StatelessWidget {
  final String name;
  final String hobby;
  final String imageURL;

  const CardItem({
    required this.name,
    required this.hobby,
    required this.imageURL,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: () {},
        leading: Image.network(imageURL),
        trailing: const Icon(Icons.more_vert),
        title: Text(name),
        subtitle: Text(hobby),
      ),
    );
  }
}
