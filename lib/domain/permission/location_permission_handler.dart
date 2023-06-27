import 'package:mask_info_clean_arch/domain/model/permission.dart';

abstract interface class LocationPermissionHandler {
  Future<bool> isLocationServiceEnabled();

  Future<Permission> checkPermission();

  Future<Permission> requestPermission();
}
