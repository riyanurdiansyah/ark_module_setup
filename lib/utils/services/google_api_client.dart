import 'package:http/http.dart' as http;

class ArkGoogleAPIClient extends http.BaseClient {
  final Map<String, String> _headers;
  final _httpClient = http.Client();

  ArkGoogleAPIClient(this._headers) : super();

  @override
  Future<http.StreamedResponse> send(http.BaseRequest request) =>
      _httpClient.send(request..headers.addAll(_headers));
}
