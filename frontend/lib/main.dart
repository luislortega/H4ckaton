import 'package:flutter/material.dart';
import './datosLugar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Colors.white,
        canvasColor: Colors.white,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),      
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  hexColor (String colorhexcode) {
    String colornew = '0xff' + colorhexcode;
    colornew = colornew.replaceAll('#', '');
    int colorInt = int.parse(colornew);
    return colorInt;
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(      
      resizeToAvoidBottomPadding: false,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,          
          children: <Widget>[
            Image.asset('assets/Logo_Bepensa.png'),
            new SizedBox(
              height: 50.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: new TextField(
                decoration: new InputDecoration(
                  labelText: "Id de usuario",                
                ),                
              )
            ),
            new SizedBox(
              height: 15.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: new TextField(
                obscureText: true,
                decoration: new InputDecoration(
                  labelText: "Contraseña",
                  
                  ),
                )
              ),
            new SizedBox(
              height: 70.0,
            ),
            new MaterialButton(
              minWidth: 300.0,
              child: new Text(
                "Log in",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18
                ),
              ),
              color: Color((hexColor('#FF551F'))),
              shape: StadiumBorder(),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) { return DatosLugar(); }));
                },
            ),
          ],
        ),
      ),
    );
  }
}
