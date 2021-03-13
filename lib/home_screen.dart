import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List listNumber = [33, 24, 20, 44, 29, 37];
  List listName = [
    'islam taha',
    'mohammd othman',
    'mahmoud ali',
    'hamed moustafa',
    'asmaa medhat',
    'kholoud morsy'
  ];
  List listEmail = [
    'eng.islamyassin25@gmail.com',
    'mohammed@gmail.com',
    'mahmoud@gmail.com',
    'moustafa@gmail.com',
    'asmaa@gmail.com',
    'kholoud@gmail.com',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Test App'),
      ),
      body: ListView.builder(
        itemCount: listNumber.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                            child: Text(
                              listNumber[index].toString(),
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            backgroundColor: Colors.blue),
                        SizedBox(width: 20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(listName[index],
                                style: TextStyle(fontSize: 16)),
                            Text(listEmail[index]),
                          ],
                        ),
                      ],
                    ),
                    TextButton(
                        onPressed: () {
                          return showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  actions: [
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          padding: EdgeInsets.fromLTRB(
                                              0, 10, 10, 10),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                  'Full Name = ${listName[index]}'),
                                              SizedBox(height: 10),
                                              Text(
                                                  'Age = ${listNumber[index]}'),
                                              SizedBox(height: 10),
                                              Text(
                                                  'E-mail = ${listEmail[index]}'),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          width:
                                              MediaQuery.of(context).size.width,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              TextButton(
                                                child: Text(
                                                  'OK',
                                                  style: TextStyle(
                                                      color: Colors.blue),
                                                ),
                                                onPressed: () {
                                                  Navigator.pop(context);
                                                },
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                );
                              });
                        },
                        child: Text('Show Card')),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
