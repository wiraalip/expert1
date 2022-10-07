import 'package:dartz/dartz.dart';
import 'package:ditonton/domain/entities/tv.dart';
import 'package:ditonton/domain/entities/tv_detail.dart';
import 'package:ditonton/common/failure.dart';

abstract class SeriesRepository {
  Future<Either<Failure, List<TV>>> getNowPlayingSeries();
  Future<Either<Failure, List<TV>>> getPopularSeries();
  Future<Either<Failure, List<TV>>> getTopRatedSeries();
  Future<Either<Failure, TvSeriesDetail>> getSeriesDetail(int id);
  Future<Either<Failure, List<TV>>> getSeriesRecommendations(int id);
  Future<Either<Failure, List<TV>>> searchSeries(String query);
  Future<Either<Failure, String>> saveWatchlistSeries(TvSeriesDetail series);
  Future<Either<Failure, String>> removeWatchlistSeries(TvSeriesDetail series);
  Future<bool> isAddedToWatchlistSeries(int id);
  Future<Either<Failure, List<TV>>> getWatchlistSeries();
}
