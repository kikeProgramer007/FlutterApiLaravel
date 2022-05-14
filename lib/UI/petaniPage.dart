
import 'package:apilaravel/Models/user.dart';
import 'package:apilaravel/Services/apiStatic.dart';
import 'package:apilaravel/UI/detailUserPage.dart';
import 'package:flutter/material.dart';

import 'homePage.dart';

class PetaniPage extends StatefulWidget {
  const PetaniPage({Key? key}) : super(key: key);

  // PetaniPage({Key? key}) : super(key: key);s

  @override
  State<PetaniPage> createState() => _PetaniPageState();
}

class _PetaniPageState extends State<PetaniPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        title: const Text('Usuarios'),
      ),

      body: FutureBuilder<List<User>>(
          future: ApiStatic.getUser(),
          builder: (context, snapshot){
            if (snapshot.connectionState==ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator());
            } else {
              List<User> listUser = snapshot.data!;
              return Container(
                padding: EdgeInsets.all(5),
                child: ListView.builder(
                  itemCount: listUser.length,
                  
                  itemBuilder: (BuildContext context, int index) => Column(
                    children: [
                      InkWell(
                        onTap: (){
                          Navigator.of(context).push( MaterialPageRoute(
                          builder: (BuildContext context) =>  DetailUserPage(user: listUser[index]) //REDIRECIONAR
                          ));
                        },
                        child: Container(
                          padding: const EdgeInsets.all(5),
                          margin: const EdgeInsets.only(top: 10),
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(3),
                            color: Colors.white,
                            border: Border.all(width: 1,color: Colors.lightGreenAccent)
                          ),

                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              // const Icon (Icons.verified_user),
                              Image.network(listUser[index].foto, width: 30,),
                              Column(
                                children: [
                                  Text(listUser[index].nombre),
                                  Text(listUser[index].nic, style: const TextStyle(fontSize: 8)),
                                ],
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              );
            }
          },
      ),
                                


    //BOTONES FOOTER
      bottomNavigationBar:  BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: 1,
        backgroundColor: const Color.fromARGB(106, 192, 205, 206),
        fixedColor: Colors.indigo,
        // iconSize: 25.5,
        onTap: (i){
          switch (i) {
            case 0:
              Navigator.of(context).pushReplacement( MaterialPageRoute(
                builder: (BuildContext context) => const HomePage() //REDIRECIONAR
                ));
              break;
            case 1:
              Navigator.of(context).pushReplacement( MaterialPageRoute(
                builder: (BuildContext context) => const PetaniPage()//REDIRECIONAR
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