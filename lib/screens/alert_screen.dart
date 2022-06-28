import 'package:flutter/material.dart';
import '../screens/home_screen.dart';

void main() {
  runApp(const AlertScreen());
}

class AlertScreen extends StatelessWidget {
   
  const AlertScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text ('Alert screen'),
      ),
      body: Center(
        child: AlertDialog(
          title: const Text('Hellooo!   ', textScaleFactor: 3),
          content: const Text('This is just a practice', textScaleFactor: 1.2),
          actions: <Widget>[
            TextButton(
              child: const Text('Ok'), 
              onPressed: () {
                // setState(() {
                // });
                // Navigator.push(
                //   context, 
                //   MaterialPageRoute(builder: (context) => const MyApp()),
                // );
              }),
  ],
)

      ),
    );
  }
}
