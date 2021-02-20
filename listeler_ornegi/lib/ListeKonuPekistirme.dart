import 'package:flutter/material.dart';

class ListeKonuPekistirme extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        Container(
          child: Card(
            color: Colors.teal.shade200,
            //shadowColor: Colors.blue,
            margin: EdgeInsets.all(10),
            elevation: 15,
            child: ListTile(
              title: Text("Çünkü sen bir pizza değilsin"),
              subtitle: Text("herkesi mutlu edemezsiiiin"),
              trailing: Icon(Icons.book),
            ),
          ),
        ),
        Container(
          child: Card(
            color: Colors.teal.shade200,
            //shadowColor: Colors.blue,
            margin: EdgeInsets.all(10),
            elevation: 15,
            child: ListTile(
              title: Text("Ben Robot"),
              subtitle: Text("sayin Büşra Ceylan"),
              trailing: Icon(Icons.book),
            ),
          ),
        ),
        Container(
          child: Card(
            color: Colors.teal.shade200,
            //shadowColor: Colors.blue,
            margin: EdgeInsets.all(10),
            elevation: 15,
            child: ListTile(
              title: Text("Sefiller"),
              subtitle: Text("sayin Büşra Ceylan"),
              trailing: Icon(Icons.book),
            ),
          ),
        ),
        Container(
          child: Card(
            color: Colors.teal.shade200,
            //shadowColor: Colors.blue,
            margin: EdgeInsets.all(10),
            elevation: 15,
            child: ListTile(
              title: Text("Fareler ve insanlar"),
              subtitle: Text("sayin Büşra Ceylan"),
              trailing: Icon(Icons.book),
            ),
          ),
        ),
        Container(
          child: Card(
            color: Colors.teal.shade200,
            //shadowColor: Colors.blue,
            margin: EdgeInsets.all(10),
            elevation: 15,
            child: ListTile(
              title: Text("Dünyanın sonuna yolculuk"),
              subtitle: Text("sayin Büşra Ceylan"),
              trailing: Icon(Icons.book),
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          width: MediaQuery.of(context).size.width * 0.95,
          height: MediaQuery.of(context).size.height * 0.07,
          child: RaisedButton(
            onPressed: () {
              Navigator.pushNamed(context, "/ListView");
            },
            child: Text(
              "Kitaplığıma Ekle",
              style: TextStyle(color: Colors.white),
            ),
            color: Color(0xff23ACCC),
            elevation: 20,
          ),
        )
      ],
    );
  }
}
