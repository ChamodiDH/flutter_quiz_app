// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quiz_api_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: type=lint
final class _$QuizApiService extends QuizApiService {
  _$QuizApiService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = QuizApiService;

  @override
  Future<Response<dynamic>> getImageData() {
    final Uri $url = Uri.parse('https://marcconrad.com/uob/smile/api.php');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }
}
