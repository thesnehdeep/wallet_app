import 'package:dio/dio.dart';

class ApiService {
  final Dio dio = Dio(
    BaseOptions(baseUrl: 'https://api.socialverseapp.com'),
  );

  Future<String> login(String mixed, String password) async {
    final response = await dio.post('/user/login', data: {
      'mixed': mixed,
      'password': password,
    });
    return response.data['token'];
  }

  Future<Map<String, dynamic>> createWallet(String token) async {
    final response = await dio.post('/solana/wallet/create',
        options: Options(headers: {'Authorization': 'Bearer $token'}));
    return response.data;
  }

  Future<Map<String, dynamic>> getBalance(String token, String address) async {
    final response = await dio.get(
      '/solana/wallet/balance',
      options: Options(headers: {'Authorization': 'Bearer $token'}),
      queryParameters: {'address': address},
    );
    return response.data;
  }

  Future<void> transferBalance(
      String token, String from, String to, double amount) async {
    await dio.post(
      '/solana/wallet/transfer',
      options: Options(headers: {'Authorization': 'Bearer $token'}),
      data: {'from': from, 'to': to, 'amount': amount},
    );
  }

  Future<void> requestAirdrop(String token, String address) async {
    await dio.post(
      '/solana/wallet/airdrop',
      options: Options(headers: {'Authorization': 'Bearer $token'}),
      data: {'address': address},
    );
  }
}
