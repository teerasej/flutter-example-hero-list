
import 'package:flutter/material.dart';
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            leading: Icon(
              Icons.access_time
            ),
            title: Text('A'),
          ),
          ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.deepPurple,
                child: Text('B'),
              ),
            title: Text('B'),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage('https://scontent.fbkk5-8.fna.fbcdn.net/v/t1.0-9/15267619_10154789415276098_1443357584742520709_n.jpg?_nc_cat=103&_nc_eui2=AeHuPeABmNHVHNpJgJ00gVIAjRAxxXJZ_96UDcsaOCG8-e3G_brNJ_nMrKTDV1Wx-qMAz1pw_XBqcY3YhY87vgU1-py_G_VSaJy6RHQUHjrBAQ&oh=c6ccfa1910c5e9908fc779903f1b78db&oe=5C5F4BA1'),
            ),
            title: Text('C'),
          ),
          ListTile(
            title: Text('D'),
          ),
          ListTile(
            title: Text('E'),
          ),
        ],
      ),
    );
  }
}