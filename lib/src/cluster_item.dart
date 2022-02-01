import 'package:google_maps_cluster_manager/google_maps_cluster_manager.dart';
import 'package:google_maps_flutter_platform_interface/google_maps_flutter_platform_interface.dart';

abstract class ClusterItem {
  LatLng get location;

  String? _geohash;
  String get geohash => _geohash ??=
      Geohash.encode(location, codeLength: ClusterManager.precision);

  String? _course;
  set course(String value) {
    _course = value;
  }
  String get course => _course!;

  String? _icon;
  set icon(String value) {
    _icon = value;
  }
  String get icon => _icon!;

  String? _rotation;
  set rotation(String value) {
    _rotation = value;
  }
  String get rotation => _rotation!;
}
