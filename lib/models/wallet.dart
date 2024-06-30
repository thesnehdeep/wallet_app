class Wallet {
  final String address;
  final double balance;

  Wallet({required this.address, required this.balance});

  factory Wallet.fromJson(Map<String, dynamic> json) {
    return Wallet(
      address: json['address'],
      balance: json['balance'],
    );
  }

  get tokens => null;
}
