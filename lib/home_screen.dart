import 'package:flutter/material.dart';
import 'package:navigation_drawer_flutter/screen_two.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'home_screen';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigation drawer'),
        backgroundColor: Color(0xff764abc),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children:  [
           // DrawerHeader(child: Text('Notes')),
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xff764abc),
              ),
              currentAccountPicture: CircleAvatar(
                  backgroundImage:NetworkImage('https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?cs=srgb&dl=pexels-pixabay-415829.jpg&fm=jpg')
              ),
              accountName: Text('Muhsan Javed'),
              accountEmail: Text('muhsantech048@gmail.com'),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Screen Two'),
              onTap: (){
                Navigator.pushNamed(context, ScreenTwo.id);
              },

            ),
            ListTile(
              leading: Icon(Icons.new_label),
              title: Text('Page 2'),
              onTap: (){},

            ),
            ListTile(
              leading: Icon(Icons.dark_mode),
              title: Text('Page 3'),
              onTap: (){},

            ),
            ListTile(
              leading: Icon(Icons.login_outlined),
              title: Text('Logout'),
              onTap: (){},

            ),
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: TextButton(
              onPressed: (){
                Navigator.pushNamed(context, ScreenTwo.id);
                // Navigator.push(
                //     context, MaterialPageRoute(builder: (context) => ScreenTwo() )
                // );
              },
              child: Center(child: Text('Home Screen')),
            ),
          )
        ],
      ),
    );
  }
}
