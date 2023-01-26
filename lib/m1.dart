import 'package:flutter/material.dart';



class classem extends StatelessWidget {
   classem({Key? key}) : super(key: key);

   List  classem1 = ['Mohamed Ben Mohamed' ,'Ahmed Ben Ahmed' , 'Karim Karim' ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Les étudiants de classe M1',
            style: TextStyle(
              color: Colors.white
            ),
          ),
        ),
        backgroundColor: Colors.purple.shade300,),
        body: ListView.builder(
      itemCount: 3,
      itemBuilder: (context,i){
        return ListTile(
          trailing: Icon(Icons.remove_red_eye_outlined),
          leading: Icon(Icons.person),
          title: Text("${classem1[i]}"),
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


