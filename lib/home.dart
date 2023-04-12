import 'package:flutter/material.dart';
import 'repair_request.dart';
import 'view_requests.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => HomeState();
}

class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white60,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(height:300),

              TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.indigo,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.all(16.0),
                  textStyle: const TextStyle(fontSize: 20),
                ),
                child: Text('Repair Request'),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>RepairRequest()));
                },
              ),
              SizedBox(height:50),

              TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.indigo,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.all(16.0),
                  textStyle: const TextStyle(fontSize: 20),
                ),
                child: Text('View Requests'),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ViewRequests()));
                },
              ),
            ],
          )
        )
      )
    );
  }
}