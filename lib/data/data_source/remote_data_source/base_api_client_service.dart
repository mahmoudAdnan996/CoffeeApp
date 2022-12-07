abstract class BaseApiClientService{
  final String baseURL = 'https://api.sampleapis.com/';

  Future<dynamic> getRequest(String apiEndPoint);

  Future<dynamic> postRequest(String apiEndPoint, dynamic body);
}