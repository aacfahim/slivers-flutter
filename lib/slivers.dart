import 'package:flutter/material.dart';

class Slivers extends StatelessWidget {
  ScrollController controller = new ScrollController();
  List contacts = [
    {"name": "Abbu", "phone": "01xxxxxxxx2"},
    {"name": "Ammu", "phone": "01xxxxxxxx6"},
    {"name": "Nabil", "phone": "01xxxxxxxx0"},
    {"name": "Example", "phone": "01xxxxxxxx0"},
    {"name": "Unknown", "phone": "01xxxxxxxx"},
    {"name": "GP Offer", "phone": "121"},
    {"name": "Chaldal", "phone": "0420"},
    {"name": "Govt info", "phone": "1629"},
    {"name": "Govt info", "phone": "1629"},
    {"name": "Govt info", "phone": "1629"},
    {"name": "Govt info", "phone": "1629"},
    {"name": "Govt info", "phone": "1629"},
    {"name": "Govt info", "phone": "1629"},
    {"name": "Govt info", "phone": "1629"},
    {"name": "Govt info", "phone": "1629"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            backgroundColor: Colors.blue,
            leading: Icon(Icons.arrow_circle_down),
            //title: Text("Hello"),
            expandedHeight: 200.0,
            stretch: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.network(
                "https://media.istockphoto.com/vectors/contact-icon-futuristic-digital-abstract-blue-background-vector-id1180650814?k=20&m=1180650814&s=612x612&w=0&h=hVmJPwh4sj6WTSkK1GqETQ8hPlJcYothMyNoFgyt0dE=",
                fit: BoxFit.cover,
              ),
              stretchModes: [
                StretchMode.zoomBackground,
                StretchMode.blurBackground,
                StretchMode.fadeTitle,
              ],
              centerTitle: true,
              title: Text("C O N T A C T S   L I S T"),
            ),
            actions: [
              Icon(Icons.search_rounded),
            ],
          ),
          SliverToBoxAdapter(
            child: ListView.builder(
                shrinkWrap: true,
                controller: controller,
                itemCount: contacts.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                      child: Text(contacts[index]["name"][0]),
                    ),
                    title: Text(contacts[index]["name"]),
                    subtitle: Text(contacts[index]["phone"]),
                  );
                }),
          )
        ],
      ),
    );
  }
}
