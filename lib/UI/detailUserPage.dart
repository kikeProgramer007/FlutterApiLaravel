import 'package:apilaravel/Models/user.dart';
import 'package:flutter/material.dart';

class DetailUserPage extends StatefulWidget {

    DetailUserPage({required this.user});
  final User user;

  @override
  State<DetailUserPage> createState() => _DetailUserPageState();
}

class _DetailUserPageState extends State<DetailUserPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.user.nombre),
      ),

      body: Container(
        width: double.infinity,
        child: ListView(
          children: [
            Image.network(widget.user.foto),
            Container(
              padding: const EdgeInsets.all(5),
              decoration: const  BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [ Color(0xff3164bd),  Color (0xff295cb5)],
                ),
              ),
              child: Text(widget.user.nic, style: const TextStyle(color: Colors.white),),
            ),

            Container(
              padding: const EdgeInsets.all(10),
              color: Colors.lightBlue,
              width: double.infinity,
              height: double.maxFinite,
              child: Text (widget.user.descripcion),
            )

          ],
        ),
      ),

    );
  }
}