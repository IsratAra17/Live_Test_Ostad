import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'api/apiclient.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home>{
  List Items=[];

@override
void initState(){
  CallData();
  super.initState();
}

CallData() async{
  var data= await GetRequest();

  setState(() {
    Items=data;
  });

}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(child: ListView.builder(
        itemCount: Items.length,
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        itemBuilder: (context,index){
          return InkWell(
            onTap: (){
              setState(() {

              });
            },
            child:
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
              Text(Items[index]['title'],style: TextStyle(color: Colors.black87),),
              Text(Items[index]['body'],style:TextStyle(color: Colors.black87),),
              SizedBox(height: 20,),
]
            ),
          );
        },
      ),),
    );
  }
}
