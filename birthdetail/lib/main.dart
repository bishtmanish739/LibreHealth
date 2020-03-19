
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{



  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "Libre Health",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      home: Scaffold(
        drawer: Drawer(

          child: ListView(
            padding: EdgeInsets.zero,
              children: <Widget>[
          DrawerHeader(

          child: Center(
           child: Text('Mr.Robert',style: TextStyle(
              fontSize: 20.0,
            ),

            ),

          ),



            decoration: BoxDecoration(
              color: Colors.blue,

                image: DecorationImage(
                    image: AssetImage("images/header.jpeg"),
                    fit: BoxFit.cover
                )
            ),
        ),
                ListTile(
                  leading: Icon(Icons.person),
                  title: Text('Child 1'),
                  onTap: () {
                    // Update the state of the app.
                    // ...
                  },
                ),
                ListTile(
                  leading: Icon(Icons.person),
                  title: Text('Child 2'),
                  onTap: () {
                    // Update the state of the app.
                    // ...
                  },
                ),
                ListTile(
                  leading: Icon(Icons.person),
                  title: Text('Child 3'),
                  onTap: () {
                    // Update the state of the app.
                    // ...
                  },
                ),
                ListTile(
                  leading: Icon(Icons.local_hospital),
                  title: Text('Nearby Hospital'),
                  onTap: () {
                    // Update the state of the app.
                    // ...
                  },
                ),
                ListTile(
                  leading: Icon(Icons.local_hospital),
                  title: Text('types of vaccine'),
                  onTap: () {
                    // Update the state of the app.
                    // ...
                  },
                ),
                ListTile(
                  leading: Icon(Icons.chat),
                  title: Text('Discussion'),
                  onTap: () {
                    // Update the state of the app.
                    // ...
                  },
                ),
                ListTile(
                  leading: Icon(Icons.share),
                  title: Text('Share This App'),
                  onTap: () {
                    // Update the state of the app.
                    // ...
                  },
                ),
                ListTile(
                  leading: Icon(Icons.settings),
                  title: Text('Settings'),
                  onTap: () {
                    // Update the state of the app.
                    // ...
                  },
                ),
              ],
          ),
        ),
        appBar: AppBar(
          title: Text(
            "Birth Details",
                style:new TextStyle(
              color: Colors.white,
                  fontSize: 24,

          ) ,
          ),
        ),
        body:Center(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[

              ListTile(
                leading: Icon(Icons.person),
                title: Text('Rony'),
                subtitle: Text('Age-26 Month'),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text('Devid'),
                subtitle: Text('Age-6 Month'),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text('Joy'),
                subtitle: Text('Age 5 year'),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),

            ],
          ),

        ),
        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('My Kids')),
            BottomNavigationBarItem(
                icon: Icon(Icons.local_hospital), title: Text('Vaccine')),
            BottomNavigationBarItem(
                icon: Icon(Icons.chat), title: Text('Discuss')),
          ],

          currentIndex: selectedIndex,
          fixedColor: Colors.deepPurple,
          onTap: onItemTapped,

        ),
      ),
    );

  }
  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  void setState(Null Function() param0) {}

}

