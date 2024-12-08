import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mental_health/util/emoji.dart';

import '../util/exercise_list.dart';

class HomePage extends StatefulWidget{
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),label:'Home' ),
            BottomNavigationBarItem(icon: Icon(Icons.home),label:'Home' ),
            BottomNavigationBarItem(icon: Icon(Icons.home),label:'Home' ),
          ]
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  greetingRow(),
                  SizedBox(height: 20,),
                  searchBox(),
                  SizedBox(height: 20,),
                  text_section(),
                  SizedBox(height: 20,),
                  EmojiRow(),
                ],
              ),
            ),

            ExercisePart()
          ],
        ),

      ),
    );
  }
}

class ExercisePart extends StatelessWidget {
  const ExercisePart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
          color: Colors.grey[300]
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 9.0),
          child: Center(
            child: Column(
              children: [
                //bar
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.horizontal_rule,color: Colors.lightBlueAccent[300],size: 42,)
                  ],
                ),
                //Exercise Text
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Exercises",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
                    Icon(Icons.more_horiz)
                  ],
                ),
                SizedBox(height: 10,),
                //List Part
                Expanded(
                  child: ListView(
                    children: [
                      Exercise_List(),
                      Exercise_List(),
                      Exercise_List(),
                      Exercise_List(),
                      Exercise_List(),
                      Exercise_List(),
                      Exercise_List(),
                      Exercise_List(),
                      Exercise_List(),
                      Exercise_List(),

                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}



class EmojiRow extends StatelessWidget {
  const EmojiRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        //sad imogi
        Column(
          children: [
            Emoji(face: "☹"),
            SizedBox(height: 3,),
            Text("Sad",style: TextStyle(color: Colors.white,),)
          ],
        ),
        //happy emoji
        Column(
          children: [
            Emoji(face: "☺"),
            SizedBox(height: 3,),
            Text("Happy",style: TextStyle(color: Colors.white,),)
          ],
        ),
        //stress emoji
        Column(
          children: [
            Emoji(face: "😪"),
            SizedBox(height: 3,),
            Text("Stress",style: TextStyle(color: Colors.white,),)
          ],
        ),
        //relax emoji
        Column(
          children: [
            Emoji(face: "😃"),
            SizedBox(height: 3,),
            Text("Relax",style: TextStyle(color: Colors.white,),)
          ],
        ),
      ],
    );
  }
}

class text_section extends StatelessWidget {
  const text_section({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "How do you feel?",
          style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w600),
        ),
        Icon(
          Icons.more_horiz,
          color: Colors.white,
        )
      ],
    );
  }
}

class searchBox extends StatelessWidget {
  const searchBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue[500],
        borderRadius: BorderRadius.circular(12)
      ),
      padding: EdgeInsets.all(12),
      child: Row(
        children: [
          Icon(
            Icons.search,
            color: Colors.white,
          ),
          SizedBox(width: 5,),
          Text(
            "Search",
            style: TextStyle(color: Colors.white),
          )
        ],
      ),
    );
  }
}

class greetingRow extends StatelessWidget {
  const greetingRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        //Hi Anik
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
                "Hi Anik",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
            ),

            Text(
              "04 Dec 2024",
              style: TextStyle(color: Colors.blue[200]),
            )
          ],
        ),
        //Notification
        Container(
          decoration: BoxDecoration(
            color: Colors.blue[500],
            borderRadius: BorderRadius.circular(13)
          ),
          padding: EdgeInsets.all(12),
          child: Icon(
            Icons.notifications,
            color: Colors.white,
          ),
        )
      ],
    );
  }
}