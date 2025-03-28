import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {

    final isDesktop = MediaQuery.of(context).size.width > 600 ;
    double size = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Media Query'),
        centerTitle: true,
        backgroundColor: Colors.blue,
        leading: isDesktop // left side icon
            ? null
            : Builder(
          builder: (context) => IconButton(
              onPressed: () => Scaffold.of(context).openDrawer(),
              //Scaffold is a layout structure in Flutter that
              // provides a drawer, app bar, floating action button, and other UI elements.
              //This method is used to open the drawer (a side menu) in the Scaffold.
              icon: Icon(Icons.menu)
          ),
        ),

      ),
      drawer:isDesktop
          ? null
          : Drawer(
        child: ListView.separated(
            itemBuilder: (context, index) {
              return ListTile(
                title: Text("Item ${index + 1}"),
              ) ;
            },
            separatorBuilder: (context, index) {
              return Divider(thickness: 2,);
            },
            itemCount: 12),
      ),

      body:  isDesktop
          ? Row(
        children: [
          Container(
            width: 250,
            decoration:  BoxDecoration(color: Colors.white24) ,
            child: ListView.separated(
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text("Item ${index + 1}"),
                  ) ;
                },
                separatorBuilder: (context, index) {
                  return Divider(thickness: 2,);
                },
                itemCount: 12),
          ),
          Expanded(
            child: CircleAvatar(
              radius: 70,
              child: Icon(Icons.person,color: Colors.white,size: 100,),
              backgroundColor: Colors.lightBlueAccent,),
          ),
        ],
      )
          :
      Center(
        child: Expanded(
          child: CircleAvatar(
            radius: 70,
            child: Icon(Icons.person,color: Colors.white,size: 100,),
            backgroundColor: Colors.lightBlueAccent,),
        ),
      ),
    );
  }
}
