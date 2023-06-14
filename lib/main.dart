import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'dart:async';
import 'dart:math' as math;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'SUS Piano'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final player = AudioPlayer();
  bool isTrue = false;
  bool isTrueSecond = false;

  @override
  Widget build(BuildContext context) {
    if (isTrue) {
      return Scaffold(
        backgroundColor: Colors.blueGrey[900],
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundColor: Colors.black45,
                radius: 60.0,
                backgroundImage: AssetImage('assets/rick.png'),
              ),
              Container(
                margin: EdgeInsets.all(10.0),
                child: Text("LOOK WHO JUST GOT RICK ROLLED !!" , style: TextStyle(color: Colors.deepPurpleAccent),),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.lime[700],
                    padding: EdgeInsets.all(6)),
                onPressed:  () async {
                  await player.stop();
                  isTrue = false;
                  isTrueSecond = true;
                  await player.play(AssetSource("jojo.mp3"));
                  setState(() {});},
                child: const Text("go back >>"),
              ),
            ],
          ),
        ),
      );
    }
    else if (isTrueSecond) {
      return Scaffold(
        backgroundColor: Colors.blue[800],
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundColor: Colors.black45,
                radius: 70.0,
                backgroundImage: AssetImage('assets/jojo.jpg'),
              ),
              Container(
                margin: EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Text("HAHA!!, YOU NOOB !!" , style: TextStyle(color: Colors.white),),
                    Text("NOW listen to this masterpiece"  ,style: TextStyle(color: Colors.white38),),
                  ],
                ),
              ),

              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.lime[700],
                          padding: EdgeInsets.all(5)),
                      onPressed: () {
                        player.stop();
                        player.play(AssetSource('jojo.mp3'));
                        isTrueSecond = true;
                        isTrue = false;
                        setState(() {});
                      },
                      child: const Text("listen again >>"),
                    ),
                    SizedBox(width: 8),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.lime[700],
                      ),
                      onPressed: () {
                        player.stop();
                        isTrueSecond = false;
                        isTrue = false;
                        setState(() {});
                      },
                      child: const Text("go back <<"),
                    ),
                  ],
                ),
              )

            ],
          ),
        ),
      );
    }
    else {
      return Scaffold(
        appBar: AppBar(
          title: Center(child: Text(widget.title)),
          backgroundColor: Colors.grey[800],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(
                child: Container(
                  margin: EdgeInsetsDirectional.all(0.0),
                  height: 90, // Set the desired height
                  width: double.infinity, // Take full width
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white10,
                    ),
                    onPressed: () {
                      player.play(AssetSource('rickroll.mp3'));
                      isTrue = true;

                      setState(() {});
                    },
                    child: Container(
                      alignment: Alignment.centerRight,
                      child: Transform.rotate(
                        angle: -math.pi / 2,
                        child: Container(
                            alignment: Alignment.center,
                            color: Colors.black,
                            height: 100,
                            width: 40,
                            child: Text("A")),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: 90, // Set the desired height
                  width: double.infinity, // Take full width
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey,
                    ),
                    onPressed: () {
                      player.play(AssetSource('note1.mp3'));
                      isTrue = true;
                      setState(() {});
                    },
                    child: Container(
                      alignment: Alignment.centerRight,
                      child: Transform.rotate(
                        angle: -math.pi / 2,
                        child: Container(
                            alignment: Alignment.center,
                            color: Colors.grey,
                            height: 100,
                            width: 40,
                            child: Text("B")),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: 90, // Set the desired height
                  width: double.infinity, // Take full width
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white10,
                    ),
                    onPressed: () {
                      player.play(AssetSource('rickroll.mp3'));
                      isTrue = true;
                      setState(() {});
                    },
                    child: Container(
                      alignment: Alignment.centerRight,
                      child: Transform.rotate(
                        angle: -math.pi / 2,
                        child: Container(
                            alignment: Alignment.center,
                            color: Colors.black,
                            height: 100,
                            width: 40,
                            child: Text("C")),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: 90, // Set the desired height
                  width: double.infinity, // Take full width
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey,
                    ),
                    onPressed: () {
                      player.play(AssetSource('rickroll.mp3'));
                      isTrue = true;
                      setState(() {});
                    },
                    child: Container(
                      alignment: Alignment.centerRight,
                      child: Transform.rotate(
                        angle: -math.pi / 2,
                        child: Container(
                            alignment: Alignment.center,
                            color: Colors.grey,
                            height: 100,
                            width: 40,
                            child: Text("D")),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: 90, // Set the desired height
                  width: double.infinity, // Take full width
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white10,
                    ),
                    onPressed: () {
                      player.play(AssetSource('rickroll.mp3'));
                      isTrue = true;
                      setState(() {});
                    },
                    child: Container(
                      alignment: Alignment.centerRight,
                      child: Transform.rotate(
                        angle: -math.pi / 2,
                        child: Container(
                            alignment: Alignment.center,
                            color: Colors.black,
                            height: 100,
                            width: 40,
                            child: Text("E")),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: 80, // Set the desired height
                  width: double.infinity, // Take full width
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey,
                    ),
                    onPressed: () {
                      player.play(AssetSource('rickroll.mp3'));
                      isTrue = true;
                      setState(() {});
                    },
                    child: Container(
                      alignment: Alignment.centerRight,
                      child: Transform.rotate(
                        angle: -math.pi / 2,
                        child: Container(
                          alignment: Alignment.center,
                          color: Colors.grey,
                          height: 100,
                          width: 40,
                          child: Text("F"),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: 80, // Set the desired height
                  width: double.infinity, // Take full width
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white10,
                    ),
                    onPressed: () {
                      player.play(AssetSource('rickroll.mp3'));
                      isTrue = true;
                      setState(() {});
                    },
                    child: Container(
                      alignment: Alignment.centerRight,
                      child: Transform.rotate(
                        angle: -math.pi / 2,
                        child: Container(
                            alignment: Alignment.center,
                            color: Colors.black,
                            height: 100,
                            width: 40,
                            child: Text("G")),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }
  }
}
