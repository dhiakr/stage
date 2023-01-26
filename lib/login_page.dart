import 'package:flutter/material.dart';
import 'package:stage/depgestion.dart';
import 'package:stage/depinfo.dart';
import 'package:stage/depmath.dart';


class login_page extends StatelessWidget {
   login_page({Key? key}) : super(key: key);

   List  dep = ['Gestion' ,'Informatique' , 'Mathématique' ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Les Départements',
            style: TextStyle(
              color: Colors.white
            ),
          ),
        ),
        backgroundColor: Colors.blueAccent,),

         //ListView pour créer la liste des départements

        body: ListView.builder(
      itemCount: 3,
      itemBuilder: (context,i){
        return ListTile(
          trailing: Icon(Icons.arrow_forward_outlined),
          title: Text("${dep[i]}"),
          onTap: (){
            if (i==2) {
              Navigator.push(
                context,
                 MaterialPageRoute(builder: (context) => depmath()));
            } 
            if (i==1) {
              Navigator.push(
                context,
                 MaterialPageRoute(builder: (context) => depinfo()));
            } 
            if (i==0) {
              Navigator.push(
                context,
                 MaterialPageRoute(builder: (context) => depgestion()));
            } 
          },
        );
        
      }),

    );
  }
}