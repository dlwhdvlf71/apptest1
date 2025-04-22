import 'package:flutter/material.dart'; //  필수로 가져와야 한다.

void main() {
  runApp(MyApp2());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        primarySwatch: Colors.blue
      ),
      home: Grade(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          title: Text('Flutter Demo Home Page'),
        ),
        body: Center(
          child: Column(
            children: [
              Text("Hello World"),
              Text("Hello World"),
              Text("Hello World")
            ],
          ),
        ),
    );
  }
}

class MyCard extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card Example'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Hello'),
              Text('Hello'),
              Text('Hello'),
              Text('Hello')
            ],
          ),
      ),
    );
  }
}

class Grade extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 231, 174, 1),
      appBar: AppBar(
        title: Text('BBANTO'),
        backgroundColor: const Color.fromARGB(255, 252, 202, 51),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 0.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/flutter_character_bounce_avatar.gif'),
                radius: 60.0,
              ),
            ),
            Divider(
              height: 60.0,
              color: const Color.fromARGB(87, 158, 158, 158),
              thickness: 2.0,
              endIndent: 30.0,
            ),
            Text('NAME',
            style: TextStyle(
              color: Colors.white,
              letterSpacing: 2.0,
              fontSize: 12.0,
              fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Text('BBANTO',
            style: TextStyle(
              color: Colors.white,
              letterSpacing: 2.0,
              fontSize: 28.0,
              fontWeight: FontWeight.bold
            ),),
            SizedBox(
              height: 30.0,
            ),
            Text('POWER LEVEL',
            style: TextStyle(
              color: Colors.white,
              letterSpacing: 2.0,
              fontSize: 12.0,
              fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Text('14',
            style: TextStyle(
              color: Colors.white,
              letterSpacing: 2.0,
              fontSize: 28.0,
              fontWeight: FontWeight.bold
            ),),
            SizedBox(
              height: 30.0,
            ),
            Row(
              children: [
                Icon(
                  Icons.check_circle_outline
                ),
                SizedBox(width: 10.0,),
                Text('using lightsaber',
                style: TextStyle(
                  fontSize: 16.0,
                  letterSpacing: 1.0
                ),)
              ],
            ),
            Row(
              children: [
                Icon(
                  Icons.check_circle_outline
                ),
                SizedBox(width: 10.0,),
                Text('face hero tattoo',
                style: TextStyle(
                  fontSize: 16.0,
                  letterSpacing: 1.0
                ),)
              ],
            ),
            Row(
              children: [
                Icon(
                  Icons.check_circle_outline
                ),
                SizedBox(width: 10.0,),
                Text('Ice bluster',
                style: TextStyle(
                  fontSize: 16.0,
                  letterSpacing: 1.0
                ),)
              ],
            ),
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/image1.png'),
                radius: 40.0,
                backgroundColor: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyApp2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    
    // TODO: implement build
    return MaterialApp(
      title: 'Appbar',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        primarySwatch: Colors.red
      ),
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text('Appbar icon Menu'),
        centerTitle: true,
      
        actions: [
          IconButton(
          icon: Icon(Icons.shopping_cart), 
          onPressed: () {
            print('shopping cart icon clicked');
            },
        ),IconButton(
          icon: Icon(Icons.shopping_bag), 
          onPressed: () {
            print('shopping bag icon clicked');
            },
        ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/image2.png'),
                backgroundColor: Colors.white,
              ),
              accountName: Text('BBANTO'),
              accountEmail: Text('bbanto@email.com'),
              onDetailsPressed: () {
                print('arrow icon clicked');
              },
              decoration: BoxDecoration(
                color: Colors.red[200],
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40.0),
                  bottomRight: Radius.circular(40.0),
                )
              ),
            )
          ],
        ),
      ),
    );
     
  }
}




