import 'package:geolocator/geolocator.dart';
import 'package:injectable/injectable.dart';
import 'package:mask_info_clean_arch/domain/model/permission.dart';
import 'package:mask_info_clean_arch/domain/permission/location_permission_handler.dart';

@prod
@Singleton(as: LocationPermissionHandler)
class LocationPermissionHandlerImpl implements LocationPermissionHandler {
  @override
  Future<Permission> checkPermission() async {
    final LocationPermission permission = await Geolocator.checkPermission();

    return switch (permission) {
      LocationPermission.denied ||
      LocationPermission.unableToDetermine =>
        Permission.denied,
      LocationPermission.deniedForever => Permission.deniedForever,
      _ => Permission.always,
    };
  }

  @override
  Future<bool> isLocationServiceEnabled() async {
    return await Geolocator.isLocationServiceEnabled();
  }

  @override
  Future<Permission> requestPermission() async {
    final LocationPermission permission = await Geolocator.requestPermission();

    return switch (permission) {
      LocationPermission.denied ||
      LocationPermission.unableToDetermine =>
      Permission.denied,
      LocationPermission.deniedForever => Permission.deniedForever,
      _ => Permission.always,
    };
  }
}
