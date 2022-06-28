import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {
  const ListView2Screen({Key? key}) : super(key: key);
  final fruits = const ["Apple", "Banana", "Orange", "Pineapple", "Strawberry"];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text ('ListView Screen Type 2'),
        ),
      body: ListView.separated(
        itemBuilder: (context, index) => 
        ListTile(
          trailing: const Icon(
            Icons.arrow_forward_ios_outlined, 
            color: Colors.indigo
          ),
        title: Text(fruits[index]),
        onTap: () {
          final fruit = fruits[index];
          print(fruit);
        },
        ), 
        separatorBuilder: (context, index) => const Divider(), 
        itemCount: fruits.length
        )
    );
  }
}