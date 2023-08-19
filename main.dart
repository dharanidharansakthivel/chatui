import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp();

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Chat UI',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage();

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF171717),
      body: Stack(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 70, left: 5, right: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.menu,
                        color: Colors.white,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 50,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.only(left: 10),
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Messages',
                        style: TextStyle(color: Colors.white, fontSize: 30),
                      ),
                    ),
                    const SizedBox(
                      width: 35,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Online',
                        style: TextStyle(color: Colors.white, fontSize: 30),
                      ),
                    ),
                    const SizedBox(
                      width: 35,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Groups',
                        style: TextStyle(color: Colors.white, fontSize: 30),
                      ),
                    ),
                    const SizedBox(
                      width: 35,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'More',
                        style: TextStyle(color: Colors.white, fontSize: 30),
                      ),
                    ),
                    const SizedBox(
                      width: 35,
                    ),
                  ],
                ),
              ),
              // Add the SizedBox here to create spacing between the Row and Container
              SizedBox(
                height: 10,
              ),
            ],
          ),
          Positioned(
            top: 190,
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.only(top: 15, left: 25, right: 25),
              height: 220,
              decoration: BoxDecoration(
                  color: Color(0xffac4ac2),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  )),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "favourite contacts",
                        style: TextStyle(color: Colors.white),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.more_horiz,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 90,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        buildcontactavatar('mani','img1.jpeg'),
                        buildcontactavatar('tharu','img2.jpeg'),
                        buildcontactavatar('mano','img3.jpeg'),
                        buildcontactavatar('sri','img4.jpg'),
                        buildcontactavatar('elle','img5.jpeg'),
                        buildcontactavatar('emma','img6.jpeg'),
                        buildcontactavatar('margit','img7.jpeg'),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            top: 365,
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 15),
               decoration: BoxDecoration(
               borderRadius: BorderRadius.only(
               topLeft: Radius.circular(40),
                 topRight: Radius.circular(40),),
              color: Color(0xFFEFFFFC),
          ),
              child: ListView(
                padding: const EdgeInsets.only(left: 25),
                  children:[
                    buildConversationrow(
                      'rob','HI DA how r you','img1.jpeg',0),
                    buildConversationrow(
                        'roni','HI DA how r you','img3.jpeg',3),
                    buildConversationrow(
                        'sri','hello','img4.jpg',5),
                    buildConversationrow(
                        'parvin','HI  how r you','img5.jpeg',0),
                    buildConversationrow(
                        'vineeth','HI DA how r you','img8.jpg',2),
                    buildConversationrow(
                        'kitty','HI DA how r you','img7.jpeg',10),
                  ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Column buildConversationrow(String name,String message,String filename , int msgcount) {
    return Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(children: [
                            userAvatar(filename: filename),
                            SizedBox(width: 15,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                 Text(
                                  name,
                                  style: TextStyle(color: Colors.black45),
                                ),
                                SizedBox(height: 5,),
                                 Text(
                                   message,
                                  style: TextStyle(color: Colors.black45),
                                ),
                              ],
                            )
                          ],
                          ),
                          Padding(
                            padding:  EdgeInsets.only(right: 25, top: 5),
                            child: Column(
                              children: [
                                Text('16:35',style: TextStyle(fontSize: 10),),
                                SizedBox(height: 5,),
                                if(msgcount>0)
                                CircleAvatar(
                                  radius: 7,
                                  backgroundColor: Color(0xFF27c1a9),
                                  child: Text(
                                    msgcount.toString(),
                                    style: TextStyle(
                                    fontSize: 10,color: Colors.white
                                  ),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      Divider(
                        indent: 70,
                      )
                    ],
                  );
  }

  Padding buildcontactavatar(String name, String filename) {
    return Padding(
      padding: const EdgeInsets.only(right:20.0),
      child: Column(
                          children: [
                            userAvatar(filename: filename,),
                            const SizedBox(
                              height: 5,
                            ),
                             Text(
                              name,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
    );
  }
}

class userAvatar extends StatelessWidget {
  final String filename;
  const userAvatar({
    super.key, required this.filename,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 32,
      backgroundColor: Colors.white,
      child: CircleAvatar(
        radius: 29,
        backgroundImage:
        AssetImage('assets/$filename'),
      ),
    );
  }
}
