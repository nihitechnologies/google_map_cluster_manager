import 'package:google_maps_cluster_manager/google_maps_cluster_manager.dart';
import 'package:google_maps_flutter_platform_interface/google_maps_flutter_platform_interface.dart';

abstract class ClusterItem {
  LatLng get location;
  String get course;
  String get icon;
  String get rotation;
  String get text;
  int get deviceId;

  String? _geohash;
  String get geohash => _geohash ??=
      Geohash.encode(location, codeLength: ClusterManager.precision);
}
