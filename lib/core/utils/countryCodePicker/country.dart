class Country2 {
  final String name;
  final String flag;
  final String countryCode;
  final String callingCode;

  const Country2(this.name, this.flag, this.countryCode, this.callingCode);

  factory Country2.fromJson(Map<String, dynamic> json) {
    return new Country2(
      json['name'] as String,
      json['flag'] as String,
      json['country_code'] as String,
      json['calling_code'] as String,
    );
  }
}
