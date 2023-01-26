import 'package:flutter/material.dart';
import 'package:stage/m1.dart';


class depmath extends StatelessWidget {
   depmath({Key? key}) : super(key: key);

   List  classemath = ['M1' ,'M2' , 'M3' ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Département Mathématique',
            style: TextStyle(
              color: Colors.white
            ),
          ),
        ),
        backgroundColor: Colors.deepPurple,),

        //ListView pour créer la liste des classes

        body: ListView.builder(
      itemCount: 3,
      itemBuilder: (context,i){
        return ListTile(
          trailing: Icon(Icons.arrow_forward_outlined),
          title: Text("${classemath[i]}"),
          onTap: (){
            if (i==0) {
              Navigator.push(
                context,
                 MaterialPageRoute(builder: (context) => classem()));

                 //seule la première case est cliquable
            } 
          },);
        
      }),

    );
  }
}

