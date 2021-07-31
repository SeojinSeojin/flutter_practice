import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:explore_flutter/GithubEvent.dart';

Future<List<GithubEvent>> fetchGithubEvents(String username) async {
  final String _baseUrl = "https://api.github.com/users/$username/events";
  final response = await http.get(Uri.parse(_baseUrl));
  if (response.statusCode == 200) {
    final data = jsonDecode(response.body);
    List<GithubEvent> githubEventList = [];
    for (Map<String,dynamic> i in data) {
      githubEventList.add(GithubEvent.fromJson(i));
    }
    return githubEventList;
  } else {
    throw Exception('Failed to Load Github Events');
  }
}

void main() => {
  runApp(MyApp())
};

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late Future<List<GithubEvent>> githubEvent;

  @override
  void initState() {
    super.initState();
    githubEvent = fetchGithubEvents("seojinseojin");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter API GET Practice',
      home: Scaffold(
          appBar: AppBar(
            title: Text('Flutter API GET Practice'),
          ),
          body: Center(
            child: FutureBuilder<List<GithubEvent>>(
                future: githubEvent,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    final List<Widget> list = [];
                    snapshot.data!.forEach((sd) => list.add(_githubTile(sd)));
                    return ListView(children: list);
                  } else if (snapshot.hasError) {
                    return Text('$snapshot ${snapshot.error}');
                  }
                  return const CircularProgressIndicator();
                }),
          )),
    );
  }
}


Widget _githubTile(GithubEvent githubEvent) {
  return ListTile(
    title: Text("${githubEvent.type} to ${githubEvent.repo.name}"),
    subtitle: Text(githubEvent.createdAt),
  );
}