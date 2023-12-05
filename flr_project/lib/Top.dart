import 'package:flutter/material.dart';
import 'package:foodloss_application/Login.dart';
//import 'package:flutter/NewRegistration.dart';

void main() {
  runApp(TopApp());
}

class TopApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TopPage(),
      theme: ThemeData(
        primaryColor: Colors.orange[800],
        textTheme: TextTheme(
          headline6: TextStyle(
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
            color: Colors.orange[800],
          ),
          bodyText2: TextStyle(
            fontSize: 18.0,
            color: Colors.black87,
          ),
        ),
      ),
    );
  }
}

class TopPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FLR'),
        backgroundColor: Colors.orange,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 200.0,
              height: 200.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR5NI48tsy3CVV12dwaRRShhnqbac55M96NnXRapycEA6y4ksaLOeGx0tis-ikRBv4dSjM&usqp=CAU'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            SizedBox(height: 100.0),
            Text(
              '食品ロスを削減しよう!!',
              style: Theme.of(context).textTheme.headline6,
            ),
            SizedBox(height: 10.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                '君の行動１つで世界を救える。',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyText2,
              ),
            ),
            SizedBox(height: 100.0),

            
            ElevatedButton(
              onPressed: () {
              //画面遷移
               Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginApp()),
               );
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.orange[600], // Use desired color for the button]
              ),
              child: Text('アプリをはじめる'),
              
            ),
            

          ],
        ),
      ),
    );
  }
}
