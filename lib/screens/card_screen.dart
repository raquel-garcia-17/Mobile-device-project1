import 'package:flutter/material.dart';

class CardScreen extends StatefulWidget {
  const CardScreen({super.key});

  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Screen'),
      ),
    );
  }
@override
  State<CardScreen> createState() => _CardScreenState();
}

class _CardScreenState extends State<CardScreen> {

  @override
  Widget build(BuildContext context) {
  return SizedBox(
    height: 210,
    child: Card(
      child: Column(
        children: [
          ListTile(
            title: const Text(
              'Raquel García Soto',
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            subtitle: const Text('Durango, dgo. CP 00001'),
            leading: Icon(
              Icons.person,
              color: Colors.greenAccent.shade400,
            ),
          ),
          const Divider(),
          ListTile(
            title: const Text(
              '(618) 123-4567',
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            leading: Icon(
              Icons.phone,
              color: Colors.greenAccent.shade400,
            ),
          ),
          ListTile(
            title: const Text('raqgar@example.com'),
            leading: Icon(
              Icons.mail,
              color: Colors.greenAccent.shade400,
            ),
          ),
        ],
      ),
    ),
  );
}
}