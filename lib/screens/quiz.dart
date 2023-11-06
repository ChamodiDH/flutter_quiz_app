import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiz_game_app/data/quiz_api_service.dart';
import 'package:quiz_game_app/screens/quiz_header.dart';
import 'package:quiz_game_app/screens/quiz_image_view.dart';
import 'package:quiz_game_app/screens/quiz_status.dart';
import 'package:quiz_game_app/screens/selection_container.dart';

class Quiz extends StatelessWidget {
  const Quiz({super.key});

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) =>
          QuizApiService.create(), // Pass the 'create' parameter here
      dispose: (_, QuizApiService service) => service.client.dispose(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Color.fromRGBO(119, 34, 197, 1),
          body: Column(
            children: [
              Center(
                child: QuizHeader(),
              ),
              QuizStatus(),
              QuizViewImage(),
              SelectionKeyContainer(),
            ],
          ),
        ),
      ),
    );
  }
}
