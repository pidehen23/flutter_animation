import 'package:flutter/material.dart';

class HeroAnt extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HeroAnt();
}

class _HeroAnt extends State<HeroAnt> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, crossAxisSpacing: 5, mainAxisSpacing: 3),
        children: List.generate(10, (index) {
          if (index == 6) {
            return InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => new _Hero1Demo()));
              },
              child: Hero(
                tag: 'hero',
                child: Container(
                  child: FlutterLogo(
                    size: MediaQuery.of(context).size.width / 4,
                  ),
                ),
              ),
            );
          }
          return Container(
            color: Colors.red,
          );
        }),
      ),
    );
  }
}

class _Hero1Demo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
          alignment: Alignment.topCenter,
          child: Hero(
            tag: 'hero',
            child: Container(
              child: FlutterLogo(
                size: MediaQuery.of(context).size.width / 2,
              ),
            ),
          )),
    );
  }
}
