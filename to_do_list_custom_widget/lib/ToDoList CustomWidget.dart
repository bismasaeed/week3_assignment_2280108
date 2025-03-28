import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class ToDoItem {
  String task;
  bool? isChecked;
  ToDoItem(this.task, [this.isChecked]);
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
  List<ToDoItem> lists = [
    ToDoItem("Wake up early and drink a glass of water 💧", true),
    ToDoItem("Attend university/classes or study 📖"),
    ToDoItem("Go for a short walk or exercise 🚶‍♂️🏃", false),
    ToDoItem("Have a healthy breakfast 🍳🥑", false),
    ToDoItem("Check and respond to emails/messages 📩", false),
    ToDoItem("Spend time with family or friends 👨‍👩‍👦", false),
    ToDoItem("Organize your workspace or room 🏡", false),
    ToDoItem("Drink at least 8 glasses of water 💦", false),
    ToDoItem("Plan tasks for tomorrow 🗓️", false),
    ToDoItem("Exercise or go for a run 🏋️‍♂️", false),
    ToDoItem("Limit social media usage ⏳📵", false),
    ToDoItem("Get at least 7-8 hours of sleep 😴", false)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purpleAccent,
        title: const Center(
          child: Text(
            'My To-Do List (Custom Widget)',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: SingleChildScrollView(
          child: Column(
            children: [
              for (int i = 0; i < lists.length; i++)
                ToDoItemWidget(
                  index: i,
                  item: lists[i],
                  onChanged: (p0) {
                    setState(() {
                      lists[i].isChecked = p0 ?? false;
                    });
                  },
                )
            ],
          ),
        ),
      ),
    );
  }
}

class ToDoItemWidget extends StatelessWidget {
  final int index;
  final ToDoItem item;
  final Function(bool?) onChanged;

  const ToDoItemWidget({
    super.key,
    required this.index,
    required this.item,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        children: [
          Text(
            "${index + 1}. ",
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              item.task,
              style: const TextStyle(fontSize: 20),
            ),
          ),
          Checkbox(
            value: item.isChecked ?? false,
            onChanged: onChanged,
          ),
        ],
      ),
    );
  }
}
