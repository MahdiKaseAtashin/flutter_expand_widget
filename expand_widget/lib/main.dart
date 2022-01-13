import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Expansionpanel(),
  ));
}

class Expansionpanel extends StatefulWidget {
  const Expansionpanel({Key? key}) : super(key: key);

  @override
  Expansionpaneltate createState() => Expansionpaneltate();
}

class NewItem {
  bool isExpanded;
  final String header;
  final Widget body;
  NewItem(this.isExpanded, this.header, this.body);
}

class Expansionpaneltate extends State<Expansionpanel> {
  List<NewItem> items = <NewItem>[
    NewItem(
      false, // isExpanded ?
      'Title', // header
      Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(children: <Widget>[
            const Text('TesT'),
            const Text('********'),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const <Widget>[
                Text('Mahdi'),
                Text('Kase'),
                Text('Atashin'),
              ],
            ),
            const Radio(value: null, groupValue: null, onChanged: null)
          ])), // body
    ),
    NewItem(
      false, // isExpanded ?
      'Title', // header
      Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(children: <Widget>[
            const Text('TesT'),
            const Text('********'),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const <Widget>[
                Text('Mahdi'),
                Text('Kase'),
                Text('Atashin'),
              ],
            ),
            const Radio(value: null, groupValue: null, onChanged: null)
          ])), // body
    ),
    NewItem(
      false, // isExpanded ?
      'Title', // header
      Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(children: <Widget>[
            const Text('TesT'),
            const Text('********'),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const <Widget>[
                Text('Mahdi'),
                Text('Kase'),
                Text('Atashin'),
              ],
            ),
            const Radio(value: null, groupValue: null, onChanged: null)
          ])), // body
    ),
    NewItem(
      false, // isExpanded ?
      'Title', // header
      Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(children: <Widget>[
            const Text('TesT'),
            const Text('********'),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const <Widget>[
                Text('Mahdi'),
                Text('Kase'),
                Text('Atashin'),
              ],
            ),
            const Radio(value: null, groupValue: null, onChanged: null)
          ])), // body
    ),
    NewItem(
      false, // isExpanded ?
      'Title', // header
      Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(children: <Widget>[
            const Text('TesT'),
            const Text('********'),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const <Widget>[
                Text('Mahdi'),
                Text('Kase'),
                Text('Atashin'),
              ],
            ),
            const Radio(value: null, groupValue: null, onChanged: null)
          ])), // body
    ),
    NewItem(
      false, // isExpanded ?
      'Title', // header
      Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(children: <Widget>[
            const Text('TesT'),
            const Text('********'),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const <Widget>[
                Text('Mahdi'),
                Text('Kase'),
                Text('Atashin'),
              ],
            ),
            const Radio(value: null, groupValue: null, onChanged: null)
          ])), // body
    ),
    NewItem(
      false, // isExpanded ?
      'Title', // header
      Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(children: <Widget>[
            const Text('TesT'),
            const Text('********'),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const <Widget>[
                Text('Mahdi'),
                Text('Kase'),
                Text('Atashin'),
              ],
            ),
            const Radio(value: null, groupValue: null, onChanged: null)
          ])), // body
    ),
  ];

  @override
  Widget build(BuildContext context) {
    Scaffold scaffold = Scaffold(
      appBar: AppBar(
        title: const Text("ExpansionPanelList"),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ExpansionPanelList(
              expansionCallback: (int index, bool isExpanded) {
                setState(() {
                  items[index].isExpanded = !items[index].isExpanded;
                });
              },
              children: items.map((NewItem item) {
                return ExpansionPanel(
                  headerBuilder: (BuildContext context, bool isExpanded) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListTile(
                          title: Text(
                        item.header,
                        textAlign: TextAlign.left,
                        style: const TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w400,
                        ),
                      )),
                    );
                  },
                  isExpanded: item.isExpanded,
                  body: item.body,
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
    return scaffold;
  }
}
