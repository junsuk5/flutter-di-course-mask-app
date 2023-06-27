import 'package:injectable/injectable.dart';
import 'package:mask_info_clean_arch/data/data_source/store_api.dart';
import 'package:mask_info_clean_arch/domain/model/store.dart';
import 'package:mask_info_clean_arch/domain/repository/store_repository.dart';

@prod
@Singleton(as: StoreRepository)
class StoreRepositoryImpl implements StoreRepository {
  final _api = StoreApi();

  @override
  Future<List<Store>> getStores() async {
    final result = await _api.getStoreResult();

    if (result.stores == null) {
      return [];
    }

    return result.stores!
        .where((e) {
          return e.remainStat != null && e.stockAt != null;
        })
        .map((e) => Store(
              name: e.name ?? '이름 없음',
              address: e.addr ?? '주소 없음',
              lat: e.lat ?? 0.0,
              lng: e.lng ?? 0.0,
              remainStatus: e.remainStat!,
            ))
        .toList();
  }
}
