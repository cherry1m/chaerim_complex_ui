import 'package:flutter/material.dart';

void main() {
  /// 앱을 실행시키는 함수
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    /// 앱
    return MaterialApp(
    home: const App(),
    );
  }
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    /// 앱
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        foregroundColor: Colors.white,
        title: Text("My App title"),
      leading: const Icon(
        Icons.arrow_back,
      ),
      actions: const [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(
            Icons.settings,
          ),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Icon(Icons.more_vert,
          ),
        ),
      ]
      ),
      body: SingleChildScrollView(
          child: SizedBox(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 200,
                  height: 70,
                  color: Colors.red,
                      ),
              ),
                        Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 200,
                  height: 70,
                  color: Colors.blue,
                      ),
              ),
                Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 200,
                  height: 70,
                  color: Colors.blue,
                      ),
              ),
                        Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 200,
                  height: 70,
                  color: Colors.blue,
                      ),
              ),
                        Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 200,
                  height: 70,
                  color: Colors.blue,
                      ),
              ),
            ]
                  ),
          ),
        ),);
  }
}