


import 'package:CrimeMap/models/place.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;
import 'package:google_maps_flutter/google_maps_flutter.dart';


class PlacesService{
  final key = 'AIzaSyAlXGv8tmhmbGS_BnlkYEpwesBZKC0EHSM';
  Future<List<Place>> getPlaces(double lat, double lng, BitmapDescriptor icon) async {
    var response = await http.get('https://maps.googleapis.com/maps/api/place/nearbysearch/json?location=$lat,$lng&type=restaurant&rankby=distance&key=$key');
    var json = convert.jsonDecode(response.body);
    var jsonResults = json['results'] as List;
    return jsonResults.map((place)=> Place.fromJson(place,icon)).toList();

  }
}
