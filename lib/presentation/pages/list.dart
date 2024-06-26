import 'package:flutter/material.dart';
import '../widgets/list_card.dart';

class ListScreen extends StatefulWidget {
  const ListScreen({super.key});

  @override
  State<ListScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height; //画面縦幅習得

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 31, 31, 31),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              height: screenHeight * 0.8,
              child: ListView(
                children: <Widget>[
                  ListCard(),
                  ListCard(),
                  ListCard(),
                  ListCard(),
                  ListCard(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
