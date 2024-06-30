import 'package:flutter/material.dart';
import 'package:wallet_app/models/wallet.dart';
import 'package:wallet_app/services/api_service.dart';

class WalletProvider with ChangeNotifier {
  final ApiService apiService;
  Wallet? _wallet;
  String? _token;
  String _selectedNetwork = 'Polygon Mainnet';

  WalletProvider({required this.apiService});

  Wallet? get wallet => _wallet;
  String? get token => _token;
  String get selectedNetwork => _selectedNetwork;

  Future<void> login(String mixed, String password) async {
    _token = await apiService.login(mixed, password);
    notifyListeners();
  }

  Future<void> createWallet() async {
    if (_token != null) {
      var data = await apiService.createWallet(_token!);
      _wallet = Wallet.fromJson(data);
      notifyListeners();
    }
  }

  Future<void> getBalance() async {
    if (_token != null && _wallet != null) {
      var data = await apiService.getBalance(_token!, _wallet!.address);
      _wallet = Wallet.fromJson(data);
      notifyListeners();
    }
  }

  Future<void> transferBalance(String to, double amount) async {
    if (_token != null && _wallet != null) {
      await apiService.transferBalance(_token!, _wallet!.address, to, amount);
      await getBalance();
    }
  }

  Future<void> requestAirdrop() async {
    if (_token != null && _wallet != null) {
      await apiService.requestAirdrop(_token!, _wallet!.address);
      await getBalance();
    }
  }

  void setSelectedNetwork(String network) {
    _selectedNetwork = network;
    notifyListeners();
  }
}
