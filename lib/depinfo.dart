import 'package:flutter/material.dart';
import 'package:stage/i1.dart';


class depinfo extends StatelessWidget {
   depinfo({Key? key}) : super(key: key);

List  classeinfo = ['I1' ,'I2' , 'I3' ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Département Informatique',
            style: TextStyle(
              color: Colors.white
            ),
          ),
        ),
        backgroundColor: Colors.green,),

        //ListView pour créer la liste des classes

        body: ListView.builder(
      itemCount: 3,
      itemBuilder: (context,i){
        return ListTile(
          trailing: Icon(Icons.arrow_forward_outlined),
          title: Text("${classeinfo[i]}"),
          onTap: (){       
            if (i==0) {
              Navigator.push(
                context,
                 MaterialPageRoute(builder: (context) => classei()));

                 //seule la première case est cliquable
            } 
          },);
        
      }),

    );
  }
}

