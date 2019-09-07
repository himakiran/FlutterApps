import 'package:flutter/material.dart';

void main() => runApp(AbhayApp());

class AbhayApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(home:DefaultTabController(
      length: choices.length,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Crypt-Decrypt"),
          bottom: TabBar(
            isScrollable: true,
            tabs: choices.map((Choice choice){
            return Tab(
              text: choice.title,
              icon: Icon(choice.icon),
            );             
            }).toList(),
          ),

        ),
        body: TabBarView(
          children: choices.map((Choice choice){
            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: ChoiceCard(choice: choice),);
          }).toList(),
        ),   ),
    ));
  }
  
}
class Choice {
  const Choice({this.title, this.icon});

  final String title;
  final IconData icon;
}
class ChoiceCard extends StatelessWidget {
  const ChoiceCard({Key key, this.choice}) : super(key: key);

  final Choice choice;

  @override
  Widget build(BuildContext context) {
    final TextStyle textStyle = Theme.of(context).textTheme.display1;
    return Card(
      color: Colors.white,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(choice.icon, size: 128.0, color: textStyle.color),
            Text(choice.title, style: textStyle),
          ],
        ),
      ),
    );
  }
}
const List<Choice> choices = const <Choice>[
  const Choice(title: 'ClearText', icon: Icons.folder_open),
  const Choice(title: 'CryptText', icon: Icons.folder),
];