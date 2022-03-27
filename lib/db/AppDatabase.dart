import 'package:moor_flutter/moor_flutter.dart';

import 'tables/SeoulBus.dart';

part 'AppDatabase.g.dart';

@UseMoor(tables: [SeoulBus], daos: [SeoulBusDao])
class AppDatabase extends _$AppDatabase {
  AppDatabase(QueryExecutor e)
      : super(FlutterQueryExecutor.inDatabaseFolder(path: 'db.sqlite'));

  @override
  int get schemaVersion => 1;
}
