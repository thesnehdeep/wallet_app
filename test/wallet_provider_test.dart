import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:wallet_app/models/wallet.dart';
import 'package:wallet_app/providers/wallet_provider.dart';
import 'package:wallet_app/services/api_service.dart';

// Generate mock class for ApiService
@GenerateMocks([ApiService])
import 'wallet_provider_test.mocks.dart';

void main() {
  late MockApiService mockApiService;
  late WalletProvider walletProvider;

  setUp(() {
    mockApiService = MockApiService();
    walletProvider = WalletProvider(apiService: mockApiService);
  });

  test('Login sets token', () async {
    when(mockApiService.login(any, any)).thenAnswer((_) async => 'mock_token');

    await walletProvider.login('Test', 'test-pass');

    expect(walletProvider.token, equals('mock_token'));
  });

  test('Create Wallet sets wallet', () async {
    final wallet = Wallet(address: 'mock_address', balance: 0.0);
    when(mockApiService.createWallet(any)).thenAnswer((_) async => {'address': 'mock_address', 'balance': 0.0});

    await walletProvider.createWallet();

    expect(walletProvider.wallet?.address, equals(wallet.address));
    expect(walletProvider.wallet?.balance, equals(wallet.balance));
  });

  // Add more tests for other provider methods (getBalance, transferBalance, requestAirdrop)
}
