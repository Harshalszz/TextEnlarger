import 'package:flutter/material.dart';
// import 'package:speech_to_text/speech_to_text.dart' as stt;


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TextEnlarger',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
        brightness: Brightness.light,
      ),
      home: HomePage(),
      
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  double _fontsize = 30;
  String a;
  final TextEditingController t1 = new TextEditingController(text: "");
  void clear(){
    setState(() {
          t1.text = "";
        });
  }

  // stt.SpeechToText _speech;
  // bool _isListening = false;
  // String _text = 'Press the button and start speaking';
  // //double _confidences = 1.0;

  // @override
  // void initState(){
  //   super.initState();
  //   _speech = stt.SpeechToText();
  // }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.purple,
        title: new Text("Enlarge Text"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Card(
          elevation: 10.0,
          color: Colors.white,
          shadowColor: Colors.deepPurpleAccent,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
                child: Text("TextEnlarger" , style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                  color: Colors.purple,
                )),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextField(
                    textInputAction: TextInputAction.done,
                    decoration: InputDecoration(
                      hintText: "Enter any text ",

                    ),
                    controller: t1,
                    style: TextStyle(fontSize: _fontsize),
                    maxLines: null,
                  ),
                ),
              ),
              // Text("Increase Size", style: TextStyle(
              //   fontSize: 30.0,
              // ),),
              Slider(value: _fontsize , onChanged: (newSize) {setState(() => _fontsize = newSize);} ,
              min: 20,
              max: 250,
              ),
              ElevatedButton(
                onPressed: clear,
                child: new Text("Clear"),
              )
            ],
          ),
        ),
      ),



      // bottomNavigationBar: new BottomNavigationBar(
      //   items: [
      //     new BottomNavigationBarItem(icon: new Icon(Icons.home), label: "Home" ),
      //     new BottomNavigationBarItem(icon: new Icon(Icons.emoji_emotions), label: "Emoji"),
      //     new BottomNavigationBarItem(icon: new Icon(Icons.share), label: "Share"),
      //   ],
      // ),
          
    );

  }
}