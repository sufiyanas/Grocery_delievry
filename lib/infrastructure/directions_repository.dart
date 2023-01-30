import 'dart:convert';
import 'dart:developer';

import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:grocery_delivary/const/api_key.dart';
import 'package:http/http.dart' as http;

class DirectionsRepository {
  static getDirection(
      {required LatLng orginLatlong,
      required LatLng destinationLatlong}) async {
    final baseUrl = Uri.parse(
        "https://maps.googleapis.com/maps/api/directions/json?origin=${orginLatlong.latitude},${orginLatlong.longitude}&destination=${destinationLatlong.latitude},${destinationLatlong.longitude}&mode=driving&key=$googleApiKey");
    final response = await http.get(baseUrl);

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      log(data.toString());
    }
  }
}
