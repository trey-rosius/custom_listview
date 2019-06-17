import 'package:colors/data.dart';
import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  ListItem({this.data,this.index});
  final Data data;
  final int index;
  @override
  Widget build(BuildContext context) {
    return index ==0 ?
    Container(
      // height: 150,
      color: Color(index == listData.length-1 ? listData[0].color : listData[index+1].color),
      child: Stack(
        children: <Widget>[
          Container(
            height: 150,

            width: MediaQuery.of(context).size.width,
            child: Material(
              color: Color(data.color),
              elevation: 6.0,
              // borderRadius: BorderRadius.circular(10.0),
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(70),),

              shadowColor: Color(0x802196F3),
              child:
              Container(
                margin: EdgeInsets.only(top: 20,left: 50,right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                          border: Border.all(color: Colors.white,width: 1)),
                          child: Icon(Icons.favorite_border,color: Colors.white,size: 40,),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("HEALTH",style: TextStyle(color: Colors.white,letterSpacing: 2),),
                        )
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Color(listData[index+1].color),width: 1)),
                          child: Icon(Icons.headset,color: Color(listData[index+1].color),size: 40,),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("MUSIC",style: TextStyle(color: Colors.white,letterSpacing: 2),),
                        )
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.white,width: 1)),
                          child: Icon(Icons.beach_access,color: Colors.white,size: 40,),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("SPORT",style: TextStyle(color: Colors.white,letterSpacing: 2),),
                        )
                      ],
                    ),


                  ],
                ),

              ),




            ),
          ),

        ],
      ),
    )
    :
    Container(
     // height: 150,
      color: Color(index == listData.length-1 ? listData[0].color : listData[index+1].color),
      child: Stack(
        children: <Widget>[
        Container(
          height: 200,

          width: MediaQuery.of(context).size.width,
          child: Material(
           color: Color(data.color),
            elevation: 6.0,
            // borderRadius: BorderRadius.circular(10.0),
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(70),),

            shadowColor: Color(0x802196F3),
              child:
                  Container(
                    margin: EdgeInsets.only(top: 20,left: 50),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(data.date,style: TextStyle(fontSize: 12.0,color: Colors.white,fontWeight: FontWeight.bold),),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(data.title,style: TextStyle(fontSize: 24.0,color: Colors.white),),
                        ),
                        Container(
                          width: 100,
                          padding: const EdgeInsets.all(10.0),
                          child: Stack(
                            children: <Widget>[
                              Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(color: Colors.white,width: 2)
                                ),
                                child: CircleAvatar(backgroundImage: AssetImage(data.image1),radius: 15,),
                              ),
                              Positioned(
                                left: 20,
                                child: Container(
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(color: Colors.white,width: 2)
                                  ),
                                  child: CircleAvatar(backgroundImage: AssetImage(data.image2),radius: 15,),
                                ),
                              )
                            ],
                          ),
                        )

                      ],
                    ),
                  ),




            ),
        ),

        ],
      ),
    );
  }
}
