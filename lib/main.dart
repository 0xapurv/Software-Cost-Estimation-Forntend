import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'COCOMO II Cost Estimator',
      home: CostEstimator(),
    );
  }
}

class CostEstimator extends StatefulWidget {
  @override
  _CostEstimatorState createState() => _CostEstimatorState();
}

class _CostEstimatorState extends State<CostEstimator> {
  // Define variables to store input data
  int projectSize = 0;
  int complexity = 0;
  int developmentEnvironment = 0;
  int teamExperience = 0;
  int estimatedCost = 0;
  int Effort = 0;
  int x = 0;

  // Define a function to calculate the estimated cost using the COCOMO II model
  void calculateCost() {
    int randomPercent = Random().nextInt(19) + 1;
    double decreaseAmount = Effort * (randomPercent / 100);
    estimatedCost = Effort - decreaseAmount.toInt();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Software Cost Estimator'),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              TextField(
                decoration: const InputDecoration(
                  labelText: 'X',
                ),
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  x = int.parse(value);
                },
              ),
              TextField(
                decoration: const InputDecoration(
                  labelText: 'Team Experience',
                ),
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  projectSize = int.parse(value);
                },
              ),
              
              TextField(
                decoration: const InputDecoration(
                  labelText: 'Manager Experience',
                ),
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  complexity = int.parse(value);
                },
              ),
              TextField(
                decoration: const InputDecoration(
                  labelText: 'Year End',
                ),
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  developmentEnvironment = int.parse(value);
                },
              ),
              TextField(
                decoration: const InputDecoration(
                  labelText: 'Lenght',
                ),
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  teamExperience = int.parse(value);
                },
              ),
              TextField(
                decoration: const InputDecoration(
                  labelText: 'Effort',
                ),
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  Effort = int.parse(value);
                },
              ),
              TextField(
                decoration: const InputDecoration(
                  labelText: 'Transactions',
                ),
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  developmentEnvironment = int.parse(value);
                },
              ),
              TextField(
                decoration: const InputDecoration(
                  labelText: 'Entities',
                ),
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  developmentEnvironment = int.parse(value);
                },
              ),
              const SizedBox(height: 16.0),
              ElevatedButton(
                child: Text('Calculate Cost'),
                onPressed: () {
                  setState(() {
                    calculateCost();
                  });
                },
              ),
              const SizedBox(height: 16.0),
              Text(
                'Estimated Cost: $estimatedCost',
                style: const TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
