import 'package:ditonton/domain/repositories/tv_repository.dart';

class GetWatchListStatusSeries {
  final SeriesRepository repository;

  GetWatchListStatusSeries(this.repository);

  Future<bool> execute(int id) async {
    return repository.isAddedToWatchlistSeries(id);
  }
}
