import 'package:flutter/material.dart';
import '../router/app_routes.dart';


class HomeScreen extends StatefulWidget{
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  State<StatefulWidget> createState() => _HomeScreenState();
  
}

class _HomeScreenState extends State<HomeScreen>{
   
  final menuOptions = AppRoutes.menuOptions;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text ('Home screen'),
      ),
      body: ListView.separated(
         itemBuilder: (context, index) => ListTile(
          leading: Icon(menuOptions[index].icon),
          title: Text(menuOptions[index].name),
          onTap: (){
            // final route = MaterialPageRoute(builder: (context)=> const ListView2Screen());
            // builder: (context) => const ListView2Screen();
            // Navigator.pushReplacement(context, route);
            Navigator.pushNamed(context, menuOptions[index].route);
          },
         ),
         separatorBuilder: (context, index) => const Divider(),
         itemCount: menuOptions.length,
      ),
    );
  }
}