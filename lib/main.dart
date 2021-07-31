import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future<http.Response> fetchGithubEvents(String username) {
  return http.get(Uri.parse("https://api.github.com/users/$username/events"));
}

void main() => {runApp(MyApp())};

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Demo'),
        ),
        body: Center(
          child: Text('Welcome Flutter'),
        ),
      ),
    );
  }
}
