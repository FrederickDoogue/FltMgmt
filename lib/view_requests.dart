import 'package:flutter/material.dart';
import 'home.dart';

class ViewRequests extends StatefulWidget {
  const ViewRequests({super.key});

  @override
  State<ViewRequests> createState() => ViewRequestsState();
}
class ViewRequestsState extends State<ViewRequests> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white60,
        body : SafeArea(
            child : Center(
                child : SingleChildScrollView(
                  child: Column(
                      children: [
                        Text("Job Request View",
                          style: TextStyle(
                              fontSize: 30
                          ),
                        ),
                        SizedBox(height:10),

                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.amber,
                              border: Border.all(color: Colors.blueAccent),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 30.0),
                              child: TextField(
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Vehicle Registration',
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height:10),

                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.amber,
                              border: Border.all(color: Colors.blueAccent),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 30.0),
                              child: TextField(
                                obscureText: true,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Size',
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height:10),

                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.amber,
                              border: Border.all(color: Colors.blueAccent),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 30.0),
                              child: TextField(
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: '2nd Size',
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height:10),

                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.amber,
                              border: Border.all(color: Colors.blueAccent),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 30.0),
                              child: TextField(
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Location',
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height:10),

                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.amber,
                              border: Border.all(color: Colors.blueAccent),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 30.0),
                              child: TextField(
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Mechanical Issue',
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height:10),

                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.amber,
                              border: Border.all(color: Colors.blueAccent),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 30.0),
                              child: TextField(
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Comment',
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height:10),

                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.amber,
                              border: Border.all(color: Colors.blueAccent),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 30.0),
                              child: TextField(
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Fleet Status',
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height:10),

                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.amber,
                              border: Border.all(color: Colors.blueAccent),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 30.0),
                              child: TextField(
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Garage Status',
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height:50),

                        TextButton(
                          style: TextButton.styleFrom(
                            backgroundColor: Colors.indigo,
                            foregroundColor: Colors.white,
                            padding: const EdgeInsets.all(16.0),
                            textStyle: const TextStyle(fontSize: 20),
                          ),
                          child: Text('Submit'),
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Home()));
                          },
                        ),
                      ]
                  ),
                )
            )
        )
    );
  }
}