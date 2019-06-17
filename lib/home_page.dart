import 'package:colors/data.dart';
import 'package:colors/list_item.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  GlobalKey<FlipCardState> cardKey = GlobalKey<FlipCardState>();

  @override
  Widget build(BuildContext context) {
    return


      FlipCard(
        key: cardKey,
        flipOnTouch: false,


     front:
     Scaffold(
       body:

     InkWell(
        onTap: (){
      cardKey.currentState.toggleCard();
    },
       child:Container(
         color: Colors.black,
         child: ListView.builder(
              itemCount: listData.length,
              itemBuilder: (context,index){
               Data data = listData[index];
               return ListItem(data: data,index:index);
          }),
       ),

    ),
       floatingActionButton: FloatingActionButton(onPressed: (){

       },backgroundColor: Colors.white,
       child: Icon(Icons.add,color: Colors.black,),)

     ),



      back: Scaffold(
        body:InkWell(
          onTap: (){
            cardKey.currentState.toggleCard();
          },
          child: Container(
            color: Colors.redAccent,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text("HAPPY",style: TextStyle(fontSize: 45,color: Colors.white,fontWeight: FontWeight.bold),),
                  Text("SUNDAY",style: TextStyle(fontSize: 45,color: Colors.white,fontWeight: FontWeight.bold),),
                  Icon(Icons.favorite,color: Colors.white,size: 60,)

                ],
              ),
            ),
          ),
        )
      ),

    );
  }
}
