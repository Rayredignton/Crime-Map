import 'package:google_maps_flutter/google_maps_flutter.dart';

class PinData {
  String pinPath;
  String email;
  LatLng location;
  int id;
  PinData({this.email, this.id, this.location, this.pinPath});
}
