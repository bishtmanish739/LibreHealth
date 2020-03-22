
import 'package:birthdetail/childinfo.dart';
import 'package:flutter/material.dart';
import 'package:share/share.dart';


import 'vaccine.dart';
import 'Settings.dart';
import 'Discussion.dart';
import 'Settings.dart';
import 'NearbyHospitals.dart';
import 'ShareThisApp.dart';
void main() => runApp(Home());
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
         //your Title,
        home: HomePage(),
    );
  }
}
class HomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => MyApp();
}

class MyApp extends State<HomePage> {

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
            child: Text("Robert",style: TextStyle(fontSize: 20.0
                ,color: Colors.white,
            ),),





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
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => childinfo(),
                      ),
                    );
                    // Update the state of the app.
                    // ...
                  },
                ),
                ListTile(
                  leading: Icon(Icons.person),
                  title: Text('Child 2'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => childinfo(),
                      ),
                    );
                    // Update the state of the app.
                    // ...
                  },
                ),
                ListTile(
                  leading: Icon(Icons.person),
                  title: Text('Child 3'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => childinfo(),
                      ),
                    );
                    // Update the state of the app.
                    // ...
                  },
                ),
                ListTile(
                  leading: Icon(Icons.local_hospital),
                  title: Text('Nearby Hospital'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => NearbyHospital(),
                      ),
                    );


                    // Update the state of the app.
                    // ...
                  },
                ),
                ListTile(
                  leading: Icon(Icons.local_hospital),
                  title: Text('types of vaccine'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => vaccine(),
                      ),
                    );
                    // Update the state of the app.
                    // ...
                  },
                ),
                ListTile(
                  leading: Icon(Icons.chat),
                  title: Text('Discussion'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Discussion(),
                      ),
                    );
                    // Update the state of the app.
                    // ...
                  },
                ),
                ListTile(
                  leading: Icon(Icons.share),
                  title: Text('Share This App'),
                  onTap: () {
                    RenderBox box = context.findRenderObject();
                    Share.share('Hello this is a test',
                        sharePositionOrigin:
                        box.localToGlobal(Offset.zero) &
                        box.size);
                    // Update the state of the app.
                    // ...
                  },
                ),
                ListTile(
                  leading: Icon(Icons.settings),
                  title: Text('Settings'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => settings(),
                      ),
                    );
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
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => childinfo(),
                    ),
                  );
                  // Update the state of the app.
                  // ...
                },
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text('Devid'),
                subtitle: Text('Age-6 Month'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => childinfo(),
                    ),
                  );
                  // Update the state of the app.
                  // ...
                },
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text('Joy'),
                subtitle: Text('Age 5 year'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => childinfo(),
                    ),
                  );
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
    onTap: (int index){
        setState(() {
          selectedIndex=index;
          if(index==1){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => vaccine()),
            );
          }
          if(index==2){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>Discussion()),
            );
          }

        });

    },

    fixedColor: Colors.deepPurple,
    ) ,


      ),
    );

  }





  }





void SetButtomNav(){
  bottomNavigationBar: BottomNavigationBar(
      items: <BottomNavigationBarItem>[
      BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('My Kids')),
  BottomNavigationBarItem(
  icon: Icon(Icons.local_hospital), title: Text('Vaccine')),
  BottomNavigationBarItem(
  icon: Icon(Icons.chat), title: Text('Discuss')),
  ],


  fixedColor: Colors.deepPurple,
  );

}

