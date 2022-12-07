import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index=0;
  @override
  Widget build(BuildContext context) {
    List<Widget>myWidgets=<Widget>[
      About(),
      Text('My name is Shahzaib Ali Awan, I am Studing Master in International Software System science at University of Bamberg ,I took a course named as Mobility in software system in which I am learning Flutter.',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,),),
      Text('Assignment # 4 ',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,),),
    ];
    return Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.menu, ),
          title: Text('My First App'),
          actions: [
            Icon(Icons.favorite),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Icon(Icons.search),
            ),
            Icon(Icons.more_vert),
          ],
          backgroundColor: Colors.blue,
        ),


    bottomNavigationBar: BottomNavigationBar(

      items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),
              label: 'About Me',),
        BottomNavigationBarItem(icon: Icon(Icons.accessibility),
            label: 'My Motivation'),
        BottomNavigationBarItem(icon: Icon(Icons.description),
            label: 'Assignment'),
      ],
      currentIndex: index,
      onTap: (currentIndex){
        setState(() {
          index=currentIndex;
        });
      },
    ),
      body:Center(
        child: myWidgets.elementAt(index),
      ),

    );
  }
}

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(width: MediaQuery.of(context).size.width,),
          CircleAvatar(
            backgroundImage: AssetImage('assets/a1.png'),
            minRadius: 12,
            maxRadius: 120,
          ),
          SizedBox(height: 30,),
          Text('Shahzaib Ali Awan',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          Text('Mobility in Software System',style: TextStyle(fontSize: 20,),),
          SizedBox(height: 30,),
          Divider(thickness: 4,),
          SizedBox(height: 50,),
          Row(children: [
            Icon(Icons.work),
            SizedBox(width: 10,),
            Text('Worked at Univerty of Bamberg'),

          ],),
          SizedBox(height: 10,),
          Row(children: [
            Icon(Icons.school),
            SizedBox(width: 10,),
            Text('Studied at Univerty of Bamberg'),

          ],),
          SizedBox(height: 10,),
          Row(children: [
            Icon(Icons.location_city),
            SizedBox(width: 10,),
            Text('Live in Bamberg'),

          ],
          ),
          Material(
            child: MaterialButton(
              child: Text('Switch'),
              onPressed: (){
            if( Get.isDarkMode){
              Get.changeThemeMode(ThemeMode.light);
            }else{
              Get.changeThemeMode(ThemeMode.dark);
            }
              },
            ),
          )
        ],
      ),
    );
  }
}

