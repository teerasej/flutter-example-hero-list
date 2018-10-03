
import 'package:flutter/material.dart';
import 'package:my_list/models/contact_model.dart';

class DetailPage extends StatelessWidget {

  final ContactModel contact;

  DetailPage(this.contact); 


  @override
  Widget build(BuildContext context) {

    var image;
    if(this.contact.imageURL.length == 0){
      image = Center(
        child: Text('No image...'),
      );
    } else {
      image = Image.network(
        this.contact.imageURL,
        width: 200.0,
      );
    }


    return Scaffold(
      appBar: AppBar(
        title: Text(this.contact.firstName),
      ),
      body: Container(
        child: image,
      ),
    );
  }
}