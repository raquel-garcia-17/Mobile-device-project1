import 'dart:math';
import 'package:flutter/material.dart';

// class AnimationScreen extends StatelessWidget {
   
//   const AnimationScreen({Key? key}) : super(key: key);
  
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text ('Animation screen'),
//       ),
//       body: const Center(
//          child: Text('AnimationScreen'),
//       ),
//     );
//   }
// }

double generateBorderRadius() => Random().nextDouble() * 64;
double generateMargin() => Random().nextDouble() * 64;
Color generateColor() => Color(0xFFFFFFFF & Random().nextInt(0xFFFFFFFF));

class AnimationScreen extends StatefulWidget {
  const AnimationScreen({super.key});
  static String routeName = '/basics/01_animated_container';

  @override
  State<AnimationScreen> createState() => _AnimationScreenState();
}

class _AnimationScreenState extends State<AnimationScreen> {
  late Color color;
  late double borderRadius;
  late double margin;

  @override
  void initState() {
    super.initState();
    color = Colors.deepPurple;
    borderRadius = generateBorderRadius();
    margin = generateMargin();
  }

  void change() {
    setState(() {
      color = generateColor();
      borderRadius = generateBorderRadius();
      margin = generateMargin();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Screen'),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: 200,
                height: 200,
                child: AnimatedContainer(
                  margin: EdgeInsets.all(margin),
                  decoration: BoxDecoration(
                    color: color,
                    borderRadius: BorderRadius.circular(borderRadius),
                  ),
                  duration: const Duration(milliseconds: 400),
                ),
              ),
            ),
            ElevatedButton(
              child: 
              const Text('change',),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(color),
              ),
              onPressed: () => change(),
            ),
          ],
        ),
      ),
    );
  }
}
