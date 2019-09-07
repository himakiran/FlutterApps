import 'package:flutter/material.dart';

void main() => runApp(AbhayApp());

class AbhayApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: DefaultTabController(
      length: choices.length,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Crypt-Decrypt"),
          bottom: TabBar(
            isScrollable: true,
            tabs: choices.map((Choice choice) {
              return Tab(
                text: choice.title,
                icon: Icon(choice.icon),
              );
            }).toList(),
          ),
        ),
        body: TabBarView(
          children: choices.map((Choice choice) {
            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: ChoiceCard(choice: choice),
            );
          }).toList(),
        ),
      ),
    ));
  }
}

class Choice {
  Choice({this.title, this.icon, this.tf, this.ts,this.textvalue});

  String title;
  IconData icon;
  TextField tf;
  TextStyle ts;
  String textvalue;
}

class ChoiceCard extends StatelessWidget {
  const ChoiceCard({Key key, this.choice}) : super(key: key);

  final Choice choice;

  @override
  Widget build(BuildContext context) {
    //final TextStyle textStyle = Theme.of(context).textTheme.display1;
    return Card(
      color: Colors.white,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            choice.tf,FloatingActionButton(onPressed: () {},)
          ],
        ),
      ),
    );
  }
}

 List<Choice> choices =  <Choice>[
  Choice(
      title: 'ClearText',
      icon: Icons.folder_open,
      textvalue: "",
      tf: TextField(
        autofocus: true,
        style: TextStyle(color: Colors.blue, fontWeight: FontWeight.w300,fontSize: 21,),
        decoration: InputDecoration(
            border: InputBorder.none, hintText: 'Enter ClearText'),
            
      )),
  Choice(
      title: 'CryptText',
      icon: Icons.folder,
      textvalue: "",
      tf: TextField(
        autofocus: true,
        style: TextStyle(color: Colors.red, fontWeight: FontWeight.w300, fontSize: 21,),
        
        decoration: InputDecoration(
            border: InputBorder.none, hintText: 'Paste CryptText'),
            
      ),
      ),
];
