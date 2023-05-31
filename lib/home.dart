import 'package:flutter/material.dart';

void main() => runApp(DashboardApp());

class DashboardApp extends StatelessWidget {
  static const String routeName = '/home';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dashboard',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: DashboardScreen(),
    );
  }
}

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard Health Care'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Overview',
                        style: TextStyle(
                          fontSize: 20,
                              backgroundColor: Colors.amber,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 16),
                     ColoredBox(color: Colors.yellow),
                      Text('Total Doctors: 30'),
                      Text('Total staff: 60'),
                      Text('Total Patient: 50'),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 16),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Recent Appointments',
                        style: TextStyle(
                          fontSize: 20,
                          backgroundColor: Colors.pink,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 16),
                      ListTile(
                        title: Text('Patient no 13'),
                        subtitle: Text('Patient name : Muhammad Ali'),
                        trailing: Text('Doctor Name : Dr Meraaj Ahmed'),
                      
                      ),
                      ListTile(
                        title: Text('Patient no 12'),
                        subtitle: Text('Patient name : Saima Rahid'),
                        trailing: Text('Doctor Name : Dr Meraaj Ahmed'),
                      ),
                      ListTile(
                       title: Text('Patient no 16'),
                        subtitle: Text('Patient name : zara Rahid'),
                        trailing: Text('Doctor Name : Dr Meraaj Ahmed'),
                      ),
                      ListTile(
                       title: Text('Patient no 19'),
                        subtitle: Text('Patient name : Laraib khan'),
                        trailing: Text('Doctor Name : Dr Nabeel'),
                      ),
                      
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

