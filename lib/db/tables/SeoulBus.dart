import 'package:busstopinfo/db/AppDatabase.dart';
import 'package:moor_flutter/moor_flutter.dart';

class SeoulBus extends Table {
  TextColumn get code => text()();
  TextColumn get name => text()();
  RealColumn get lat => real()();
  RealColumn get long => real()();

  @override
  Set<Column> get primaryKey => {code};
}

@UseDao(tables: [SeoulBus])
class SeoulBusDao extends DatabaseAccessor<AppDatabase> {
  SeoulBusDao(AppDatabase db) : super(db);
}
