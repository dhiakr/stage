import 'package:flutter/material.dart';
import 'package:stage/g1.dart';



class depgestion extends StatelessWidget {
   depgestion({Key? key}) : super(key: key);


List  classegestion = ['G1' ,'G2' , 'G3' ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Département Gestion',
            style: TextStyle(
              color: Colors.white
            ),
          ),
        ),
        backgroundColor: Colors.brown,),

        //ListView pour créer la liste des classes

        body: ListView.builder(
      itemCount: 3,
      itemBuilder: (context,i){
        return ListTile(
          trailing: Icon(Icons.arrow_forward_outlined),
          title: Text("${classegestion[i]}"),
          onTap: (){
            if (i==0) {
              Navigator.push(
                context,
                 MaterialPageRoute(builder: (context) => classeg()));

                 //seule la première case est cliquable
            } 
          },);
        
      }),

    );
  }
}

