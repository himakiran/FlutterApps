import 'package:flutter/material.dart';

void main() => runApp(AbhayApp());

class AbhayApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final TextStyle textStyle = Theme.of(context).textTheme.display1;
    return MaterialApp(
      home: DefaultTabController(
        length: choices.length,
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Crypt-Decrypt"),
            bottom: TabBar(
              isScrollable: true,
              tabs: <Widget>[
                Tab(
                    text: choices[0].title,
                    icon: Icon(
                      choices[0].icon,
                    )),
                Tab(
                    text: choices[0].title,
                    icon: Icon(
                      choices[0].icon,
                    )),
              ],
              // tabs: choices.map((Choice choice) {
              //   return Tab(
              //     text: choice.title,
              //     icon: Icon(choice.icon),
              //   );
              // }).toList(),
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              Card(
                color: Colors.white,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      TextField(
                        autofocus: false,
                        scrollPadding: EdgeInsets.all(20.0),
                        maxLines: 5,
                        onChanged: (text) {
                          choices[0].textvalue = "you entered :" + text;
                        },
                        style: textStyle,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: choices[0].textvalue),
                      ),
                      FloatingActionButton(
                        onPressed: () {},
                        
                        
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                color: Colors.white,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      TextField(
                        autofocus: false,
                        maxLines: 5,
                        scrollPadding: EdgeInsets.all(20.0),
                        onChanged: (text) {
                          choices[1].textvalue = "you pasted :" + text;
                        },
                        style: textStyle,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: choices[1].textvalue),
                      ),
                      FloatingActionButton(
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              )
              // choices.map((Choice choice) {
              //   return Padding(
              //     padding: const EdgeInsets.all(16.0),
              //     child: ChoiceCard(choice: choice),
              //   );
              // }).toList(),
            ],
          ),
        ),
      ),
    );
  }
}

class Choice {
  Choice({this.title, this.icon, this.textvalue});

  String title;
  IconData icon;
  String textvalue;
}

// class ChoiceCard extends StatelessWidget {
//   const ChoiceCard({Key key, this.choice}) : super(key: key);

//   final Choice choice;

//   @override
//   Widget build(BuildContext context) {
//     final TextStyle textStyle = Theme.of(context).textTheme.display1;
//     return Card(
//       color: Colors.white,
//       child: Center(
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: <Widget>[
//             TextField(
//               autofocus: true,
//               onChanged: (text) {
//                 choice.textvalue = "you entered :" + text;
//               },
//               style: textStyle,
//               decoration: InputDecoration(
//                   border: InputBorder.none, hintText: choice.textvalue),
//             ),
//             FloatingActionButton(
//               onPressed: () {},
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

List<Choice> choices = <Choice>[
  Choice(
    title: 'ClearText',
    icon: Icons.folder_open,
    textvalue: "Enter ClearText",
  ),
  Choice(
    title: 'CryptText',
    icon: Icons.folder,
    textvalue: "Paste CryptText",
  ),
];
