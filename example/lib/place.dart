import 'package:google_maps_cluster_manager/google_maps_cluster_manager.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Place with ClusterItem {
  final String name;
  final bool isClosed;
  final LatLng latLng;
  final String courseVal;
  final String iconPath;
  final String isRotating;

  Place(
      {
        required this.name,
        required this.latLng,
        this.isClosed = false,
        required this.courseVal,
        required this.iconPath,
        required this.isRotating
      });

  @override
  String toString() {
    return 'Place $name (closed : $isClosed)';
  }

  @override
  LatLng get location => latLng;

  @override
  String get course => courseVal;

  @override
  String get icon => iconPath;

  @override
  String get rotation => isRotating;
}
