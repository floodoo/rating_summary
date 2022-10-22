import 'package:flutter/material.dart';
import 'package:rating_summary/rating_summary.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rating Summary Example'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(20.0),
        child: Card(
          child: RatingSummary(
            ratingCounter: 13,
            ratingAverage: 3.846,
            ratingFiveStarsCounter: 5,
            ratingFourStarsCounter: 4,
            ratingThreeStarsCounter: 2,
            ratingTwoStarsCounter: 1,
            ratingOneStarsCounter: 1,
          ),
        ),
      ),
    );
  }
}
