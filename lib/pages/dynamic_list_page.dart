
import 'package:flutter/material.dart';
import 'package:my_list/models/contact_model.dart';
import 'package:my_list/pages/detail_page.dart';

class DynamicListPage extends StatefulWidget {
  _DynamicListPageState createState() => _DynamicListPageState();
}

class _DynamicListPageState extends State<DynamicListPage> {

  // List<String> alphabetList = new List<String>();
  List<ContactModel> contactList = new List<ContactModel>();


  _DynamicListPageState() {

    contactList.add(ContactModel("Steve", "Roger", "http://static.shoplightspeed.com/shops/609551/files/002433978/dynamic-discs-dyemax-marvel-captain-america-truth.jpg"));
    contactList.add(ContactModel("Tony", "Stark", "https://cdn.images.express.co.uk/img/dynamic/36/590x/Avengers-Iron-Man-was-almost-played-by-another-major-star-936289.jpg"));
    contactList.add(ContactModel("Bruce", "Banner", ""));
    contactList.add(ContactModel("Natasha", "Romanov", "https://am24.akamaized.net/tms/cnt/uploads/2015/06/black_widow_avengers_age_of_ultron-wide-1280x800.jpg"));
    contactList.add(ContactModel("Thanos", "", "https://vignette.wikia.nocookie.net/marvelcinematicuniverse/images/5/52/Empire_March_Cover_IW_6_Textless.png"));

    // alphabetList.add("A");
    // alphabetList.add("B");
    // alphabetList.add("C");
    // alphabetList.add("D");
    // alphabetList.add("E");
    // alphabetList.add("F");
    // alphabetList.add("G");
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dynamic List'),
      ),
      body: ListView.builder(
        itemCount: contactList.length,
        itemBuilder: (context,index) {
          print(index);

          var data = contactList[index];
          

          var imageProfileWidget;
          if(data.imageURL.length == 0){

            var firstCharacter = data.firstName[0];

            imageProfileWidget = CircleAvatar(
              backgroundColor: Colors.blue,
              child: Text(firstCharacter),
            );
          } else {
            imageProfileWidget = CircleAvatar(
              backgroundImage: NetworkImage(data.imageURL)
            );
          }

          return ListTile(  
            leading: imageProfileWidget,
            title: Text(data.firstName),
            onTap: () {
              Navigator.push(
                context, 
                MaterialPageRoute(
                  builder: (context) {
                    return DetailPage(contactList[index]);
                  }
                )
              );
            },
          );
        },
      ),
    );
  }
}