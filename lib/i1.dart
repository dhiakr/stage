import 'package:flutter/material.dart';



class classei extends StatelessWidget {
   classei({Key? key}) : super(key: key);

   List  classei1 = ['Mohamed Ben Mohamed' ,'Ahmed Ben Ahmed' , 'Karim Karim' ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Les étudiants de classe I1',
            style: TextStyle(
              color: Colors.white
            ),
          ),
        ),
        backgroundColor: Colors.greenAccent,),
        body: ListView.builder(
      itemCount: 3,
      itemBuilder: (context,i){
        return ListTile(
          trailing: Icon(Icons.remove_red_eye_outlined),
          leading: Icon(Icons.person),
          title: Text("${classei1[i]}"),
          onTap: (){
            if (i==0){
             showDialog(context: context, builder: (context){
                return AlertDialog(title: Text(
                  "Mohamed Ben Mohamed"),
                  content: Text("Admis"),);
                  
                  //showDialog pour accéder au profil d'étudiant
                  //seule la première case est cliquable
             });
            }
          },);
        
      }),

    );
  }
}

