class VaultData {
  List<dynamic> portfolios;
  List<dynamic> sips;

  VaultData({
    required this.portfolios,
    required this.sips,
  });

  Map<String, dynamic> toJson() {
    return {
      'portfolios': portfolios,
      'sips': sips,
    };
  }

  factory VaultData.fromJson(Map<String, dynamic> json) {
    return VaultData(
      portfolios: json['portfolios'] ?? [],
      sips: json['sips'] ?? [],
    );
  }
}