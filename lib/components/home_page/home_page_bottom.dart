import 'package:flutter/material.dart';
import 'package:simuladorprocessos/models/algorithms/algorithms.dart';
import 'package:simuladorprocessos/pages/grantt_page.dart';

class HomePageBottom extends StatefulWidget {
  const HomePageBottom({super.key});

  @override
  State<HomePageBottom> createState() => _HomePageBottomState();
}

class _HomePageBottomState extends State<HomePageBottom> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Column(
        children: [
          title(),
          content(),
        ],
      ),
    );
  }

  Widget title() {
    return Expanded(
      child: Center(
        child: Container(
          padding: EdgeInsets.only(top: 10),
          child: Text('ALGORITMOS'),
        ),
      ),
    );
  }

  Widget content() {
    return Container(
      margin: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          escalationButton('FIFO', Algorithms.FIFO),
          escalationButton('SJF', Algorithms.SJF),
          escalationButton('EDF', Algorithms.EDF),
          escalationButton('ROUND ROBIN', Algorithms.RR),
        ],
      ),
    );
  }

  Widget escalationButton(String label, Algorithms algorithm) {
    return Center(
      child: Container(
        width: 120,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.black),
        ),
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => GranttChartPage(algorithm)),
            );
          },
          child: Center(child: Text(label)),
        ),
      ),
    );
  }
}
