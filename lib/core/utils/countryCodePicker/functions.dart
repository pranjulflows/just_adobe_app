import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
// import 'package:flutter_sim_country_code/flutter_sim_country_code.dart';

import './country.dart';

///This function returns list of countries
Future<List<Country2>> getCountries(BuildContext context) async {
  String rawData = await DefaultAssetBundle.of(context).loadString(
      'raw/country_codes.json');
  final parsed = json.decode(rawData.toString()).cast<Map<String, dynamic>>();
  return parsed.map<Country2>((json) => Country2.fromJson(json)).toList();
}

///This function returns an user's current country. User's sim country code is matched with the ones in the list.
///If there is no sim in the device, first country in the list will be returned.
///This function returns an user's current country. User's sim country code is matched with the ones in the list.
///If there is no sim in the device, first country in the list will be returned.
// Future<Country2> getDefaultCountry(BuildContext context) async {
//   final list = await getCountries(context);
//   try {
//     final countryCode = await FlutterSimCountryCode.simCountryCode;
//     if (countryCode == null) {
//       return list.first;
//     }
//     return list.firstWhere((element) =>
//         element.countryCode.toLowerCase() == countryCode.toLowerCase());
//   } catch (e) {
//     return list.first;
//   }
// }

///This function returns an country whose [countryCode] matches with the passed one.
Future<Country2?> getCountryByCountryCode(
    BuildContext context, String countryCode) async {
  final list = await getCountries(context);
  return list.firstWhere((element) => element.countryCode == countryCode);
}


