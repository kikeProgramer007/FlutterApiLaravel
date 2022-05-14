import 'package:apilaravel/UI/petaniPage.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  //  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar:  AppBar(
        title: const Text('Home'),
      ),

      body: const Center(
        child: Text('Home PAge'),
      ),


    //BOTONES FOOTER
      bottomNavigationBar:  BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: 0,
        backgroundColor: Color.fromARGB(106, 192, 205, 206),
        fixedColor: Colors.indigo,
        iconSize: 25.5,
        onTap: (i){
          switch (i) {
            case 0:
              Navigator.of(context).pushReplacement( MaterialPageRoute(
                builder: (BuildContext context) => HomePage() //REDIRECIONAR
                ));
              break;
            case 1:
              Navigator.of(context).pushReplacement( MaterialPageRoute(
                builder: (BuildContext context) => PetaniPage()//REDIRECIONAR
                ));
              break;              
            default:
          }
        }, 
        items:  const [
            BottomNavigationBarItem(icon: Icon (Icons.home),label: 'Home'),
            BottomNavigationBarItem(icon: Icon (Icons.supervised_user_circle), label: 'User'),
        ],
      ),

    );
  }
}