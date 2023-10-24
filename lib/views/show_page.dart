import 'package:flutter/material.dart';

class ShowPage extends StatefulWidget {
  const ShowPage({Key? key}) : super(key: key);
  @override
  // ignore: library_private_types_in_public_api
  _ShowPageState createState() => _ShowPageState();
}

class _ShowPageState extends State<ShowPage> {
  // ignore: unused_field
  final bool _isPanel1Expanded = false;
  // ignore: unused_field
  final bool _isPanel2Expanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            ExpansionPanelList.radio(
              elevation: 1,
              expandedHeaderPadding: const EdgeInsets.all(8.0),
              children: [
                ExpansionPanelRadio(
                  headerBuilder: (BuildContext context, bool isExpanded) {
                    return const ListTile(
                      title: Text('Gasoline Station 1'),
                    );
                  },
                  body: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Diesel',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      Text('Unleaded',
                          style: TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.bold)),
                    ],
                  ),
                  value: 'panel1',
                  //isExpanded: _isPanel1Expanded,
                  canTapOnHeader: true,
                ),
                ExpansionPanelRadio(
                  headerBuilder: (BuildContext context, bool isExpanded) {
                    return const ListTile(
                      title: Text('Gasoline Station 2'),
                    );
                  },
                  body: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Diesel',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      Text('Unleaded',
                          style: TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.bold)),
                    ],
                  ),
                  value: 'panel2',
                  //isExpanded: _isPanel2Expanded,
                  canTapOnHeader: true,
                ),
                // Add more ExpansionPanelRadio widgets as needed
              ],
            ),
          ],
        ),
      ),
    );
  }
}
