import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(Icons.person,size: 50.0,),
              ),
              accountName: Text('User Name'),
              accountEmail: Text('examlpe@gmail.com'),
            ),
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.person_outline,
                color: Colors.white,
                size: 30.0,
                ),
              ),
              title: Text("Profile Settings"),
              onTap: (){

              },
            ),
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.settings,
                color: Colors.white,
                size: 30.0,
                ),
              ),
              title: Text("Settings"),
              onTap: (){

              },
            ),
            Divider(),
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.help_outline,
                color: Colors.white,
                size: 30.0,
                ),
              ),
              title: Text("About us"),
              onTap: (){
              },
            ),
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.cached,
                color: Colors.white,
                size: 30.0,
                ),
              ),
              title: Text("Recenceter"),
              onTap: (){
                Navigator.pushNamed(context, '/login');
              },
            ),
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.exit_to_app,
                color: Colors.white,
                size: 30.0,
                ),
              ),
              title: Text("Logout"),
            ),
          ],
        ),
      ),

      appBar: AppBar(
        title: Text("Home Page"),
        centerTitle: true,
      ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xff6bceff),
        onPressed: () { 
        },
        child: Icon(Icons.add,color:Colors.white),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home,color: Color(0xff6bceff),),
            title: Text('Home',style: TextStyle(
              color: Color(0xff6bceff),
            ),),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            title: Text('Historique'),
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          SizedBox(
            height: 50,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius:  BorderRadius.all(Radius.circular(50)),
            ),
            child: ListTile(
              leading: Icon(Icons.event_available),
              title: Text("Acheter un Cadeau"),
              trailing: Text("-200",style: TextStyle(color: Colors.red),),
              subtitle: Text("Acheter un Cadeau pour l'anniversaire de mon amis"),
            ),
          ),
          ListTile(
            leading: Icon(Icons.event_available),
            title: Text("La bourse"),
            trailing: Text("+400",style: TextStyle(color: Colors.green),),
            subtitle: Text("La bourse de December..."),
          ),
        ],
      ),
    );
  }
}