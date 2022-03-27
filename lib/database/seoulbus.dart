import 'package:moor/moor.dart';
import 'database.dart';

part 'seoulbus.g.dart';

class SeoulBus extends Table{
  TextColumn get code => text()();
  TextColumn get name => text()();
  RealColumn get lat => real()();
  RealColumn get long => real()();
}

@UseDao(tables:[SeoulBus])
class SeoulBusDao extends DatabaseAccessor<MyDatabase> with _$SeoulBusDaoMixin{
  SeoulBusDao(MyDatabase db):super(db);
  //CRUD 구현.

}