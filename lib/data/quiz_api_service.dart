import 'package:chopper/chopper.dart';
part 'quiz_api_service.chopper.dart';

@ChopperApi(baseUrl: 'https://marcconrad.com/uob/smile/api.php')
abstract class QuizApiService extends ChopperService {
  @Get()
  Future<Response> getImageData();

  static QuizApiService create() {
    final client = ChopperClient(
      baseUrl: Uri.parse('https://marcconrad.com/uob/smile/api.php'),
      services: [
        _$QuizApiService(),
      ],
      converter: const JsonConverter(),
    );
    return _$QuizApiService(client);
  }
}
