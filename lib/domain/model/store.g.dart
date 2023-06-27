// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Store _$$_StoreFromJson(Map<String, dynamic> json) => _$_Store(
      name: json['name'] as String,
      address: json['address'] as String,
      lat: json['lat'] as num,
      lng: json['lng'] as num,
      distance: json['distance'] as num? ?? 0.0,
      remainStatus: json['remainStatus'] as String,
    );

Map<String, dynamic> _$$_StoreToJson(_$_Store instance) => <String, dynamic>{
      'name': instance.name,
      'address': instance.address,
      'lat': instance.lat,
      'lng': instance.lng,
      'distance': instance.distance,
      'remainStatus': instance.remainStatus,
    };
