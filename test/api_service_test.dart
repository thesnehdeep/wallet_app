import 'package:flutter_test/flutter_test.dart';
import 'package:wallet_app/services/api_service.dart';
import 'package:dio/dio.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';

void main() {
  late ApiService apiService;
  late DioAdapter dioAdapter;

  setUp(() {
    apiService = ApiService();
    dioAdapter = DioAdapter(dio: apiService.dio);
  });

  test('Login API returns a token', () async {
    final token = 'mock_token';

    dioAdapter.onPost(
      '/user/login',
      (request) => request.reply(200, {'token': token}),
      data: {'mixed': 'Test', 'password': 'test-pass'},
    );

    final response = await apiService.login('Test', 'test-pass');
    expect(response, equals(token));
  });

  test('Create Wallet API returns a wallet', () async {
    final wallet = {'address': 'mock_address', 'balance': 0.0};

    dioAdapter.onPost(
      '/solana/wallet/create',
      (request) => request.reply(200, wallet),
      headers: {'Authorization': 'Bearer mock_token'},
    );

    final response = await apiService.createWallet('mock_token');
    expect(response['address'], equals(wallet['address']));
    expect(response['balance'], equals(wallet['balance']));
  });

  // Add more tests for other API methods (getBalance, transferBalance, requestAirdrop)
}
