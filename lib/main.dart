import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
                backgroundColor: Colors.grey[600],
                child: IconButton(onPressed: (){}, icon: Icon(Icons.menu_outlined,color: Colors.white,))),
          ),
          title: Text('Chats',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 22)),
          actions: [
            Padding(
              padding: const EdgeInsets.all(9),
              child: CircleAvatar(
                radius: 20,
                  backgroundColor: Colors.grey[600],
                  child: IconButton(onPressed: (){}, icon: Icon(Icons.camera_alt,color: Colors.white,))),
            ),
            Padding(
              padding: const EdgeInsets.all(9.0),
              child: CircleAvatar(
                  backgroundColor:Colors.grey[600],
                  child: IconButton(onPressed: (){}, icon: Icon(Icons.edit,color: Colors.white,))),
            ),
          ],
        ),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[400],
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Icon(Icons.search),
                          Text('search',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),)
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    height: 120,
                    width: double.infinity,
                    child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) => stories(),
                        separatorBuilder: (context, index) => SizedBox(width: 15),
                        itemCount: 20),
                  ),
                  ListView.separated(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                      itemBuilder: (context, index) => chat(),
                      separatorBuilder: (context, index) => SizedBox(height:15),
                      itemCount: 20),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
  Widget stories() => Row(
    children: [
    Container(
      width: 50,
      child: Column(
        children: [
          Stack(
            alignment: Alignment.bottomRight,
            children: [
              CircleAvatar(
                 backgroundColor: Colors.white,
                radius: 30.0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: Image.network(fit: BoxFit.cover,'https://img.freepik.com/premium-vector/portrait-peeping-smiling-young-man-vector-flat-illustration-face-funny-male-searching-something-isolated-white-curious-guy-looking-through-circle-shape-person-watching-out-round-frame_198278-10269.jpg?w=2000'),
                  ),
                ),
              ),
              CircleAvatar(radius: 11,backgroundColor: Colors.black),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: CircleAvatar(radius: 9,backgroundColor: Colors.green),
              )
            ],
          ),
          SizedBox(height: 4,),
          Text('Ahmed Adel Mohamed',maxLines: 2,textAlign: TextAlign.center,style: TextStyle(overflow:TextOverflow.ellipsis,color: Colors.white, ),)
        ],
      ),
    )
    ],
  );

  Widget chat() => Row(
    children: [
      Stack(
        alignment: Alignment.bottomRight,
        children: [
          CircleAvatar(
            backgroundColor: Colors.white,
            radius: 30.0,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Padding(
                padding: const EdgeInsets.all(1.0),
                child: Image.network(fit: BoxFit.cover,'https://img.freepik.com/premium-vector/portrait-peeping-smiling-young-man-vector-flat-illustration-face-funny-male-searching-something-isolated-white-curious-guy-looking-through-circle-shape-person-watching-out-round-frame_198278-10269.jpg?w=2000'),
              ),
            ),
          ),
          CircleAvatar(radius: 11,backgroundColor: Colors.black),
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: CircleAvatar(radius: 9,backgroundColor: Colors.green),
          )
        ],
      ),
      SizedBox(width: 10,),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Ahmed Adel Mohamed',maxLines: 1,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17,overflow:TextOverflow.ellipsis,color: Colors.white, ),),
            SizedBox(height: 5,),
            Row(children: [
            Expanded( child: Text('welcome name is Ahmed Adel Mohamed',maxLines: 1,style: TextStyle(overflow:TextOverflow.ellipsis,color: Colors.white, ),)),
              SizedBox(width: 10,),
              CircleAvatar(
                radius: 5,
              ),
              SizedBox(width: 10),
              Text('02:00 pm',style: TextStyle(color: Colors.white),)
          ],)
          ],
        ),
      )
    ],
  );

}
