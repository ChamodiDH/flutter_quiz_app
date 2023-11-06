import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:chopper/chopper.dart';
import 'package:quiz_game_app/data/api_service.dart';
import 'package:quiz_game_app/data/quiz_api_service.dart';

class QuizViewImage extends StatefulWidget {
  const QuizViewImage({Key? key}) : super(key: key);

  @override
  _QuizViewImageState createState() => _QuizViewImageState();
}

class _QuizViewImageState extends State<QuizViewImage> {
  String? imageUrl;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: Provider.of<QuizApiService>(context).getImageData(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final Map iurl = json.decode(snapshot.data!.bodyString);
            print('printing iurl');
            print(iurl);
            //final imageData = snapshot.data['question'] as String;
            return _buidImage(iurl);
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        });
  }

  Container _buidImage(Map iurl) {
    return Container(
      margin: EdgeInsets.only(left: 15, right: 15),
      alignment: Alignment.center,
      height: 200, // Set your desired height here
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.network(
          iurl['question'],
          fit: BoxFit.cover,
          width: double.infinity,
          height: 200,
        ),
      ),
    );
  }
}
