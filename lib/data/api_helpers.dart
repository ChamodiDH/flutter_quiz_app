// import 'package:chopper/chopper.dart';
// import 'package:quiz_game_app/api_service.dart';

// Future<QuestionResponse> fetchQuestionAndSolution() async {
//   final client = ChopperClient(
//     baseUrl: Uri.parse('marcconrad.com/uob/smile/api.php'),
//     converter: const JsonConverter(),
//   );
//   final apiService = ApiService.create(client);

//   final response = await apiService.getQuestionAndSolution();
//   if (response.isSuccessful) {
//     return response.body;
//   } else {
//     throw Exception('Failed to fetch question and solution: ${response.error}');
//   }
// }

// class QuestionResponse {
//   final String question;
//   final int solution;

//   QuestionResponse({required this.question, required this.solution});

//   factory QuestionResponse.fromJson(Map<String, dynamic> json) {
//     return QuestionResponse(
//       question: json['question'] as String,
//       solution: json['solution'] as int,
//     );
//   }
// }
