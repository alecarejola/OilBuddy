import 'package:flutter/material.dart';

class FuelOrderPage extends StatefulWidget {
  const FuelOrderPage({Key? key}) : super(key: key);
  @override
  // ignore: library_private_types_in_public_api
  _FuelOrderPage createState() => _FuelOrderPage();
}

class _FuelOrderPage extends State<FuelOrderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: <Widget>[
        Container(
          height: MediaQuery.of(context).size.height / 10,
          width: MediaQuery.of(context).size.width / 1.019,
          color: Colors.lightBlue[100],
          margin: const EdgeInsets.only(left: 5.0, top: 10),
        ),
        Container(
          height: MediaQuery.of(context).size.height / 10,
          width: MediaQuery.of(context).size.width / 1.019,
          color: Colors.lightBlue[100],
          margin: const EdgeInsets.only(left: 5.0, top: 10),
        )
      ],
    ));
  }
}
