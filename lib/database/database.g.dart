// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class SeoulBu extends DataClass implements Insertable<SeoulBu> {
  final String code;
  final String name;
  final double lat;
  final double long;
  SeoulBu(
      {required this.code,
      required this.name,
      required this.lat,
      required this.long});
  factory SeoulBu.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return SeoulBu(
      code: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}code'])!,
      name: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}name'])!,
      lat: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}lat'])!,
      long: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}long'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['code'] = Variable<String>(code);
    map['name'] = Variable<String>(name);
    map['lat'] = Variable<double>(lat);
    map['long'] = Variable<double>(long);
    return map;
  }

  SeoulBusCompanion toCompanion(bool nullToAbsent) {
    return SeoulBusCompanion(
      code: Value(code),
      name: Value(name),
      lat: Value(lat),
      long: Value(long),
    );
  }

  factory SeoulBu.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return SeoulBu(
      code: serializer.fromJson<String>(json['code']),
      name: serializer.fromJson<String>(json['name']),
      lat: serializer.fromJson<double>(json['lat']),
      long: serializer.fromJson<double>(json['long']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'code': serializer.toJson<String>(code),
      'name': serializer.toJson<String>(name),
      'lat': serializer.toJson<double>(lat),
      'long': serializer.toJson<double>(long),
    };
  }

  SeoulBu copyWith({String? code, String? name, double? lat, double? long}) =>
      SeoulBu(
        code: code ?? this.code,
        name: name ?? this.name,
        lat: lat ?? this.lat,
        long: long ?? this.long,
      );
  @override
  String toString() {
    return (StringBuffer('SeoulBu(')
          ..write('code: $code, ')
          ..write('name: $name, ')
          ..write('lat: $lat, ')
          ..write('long: $long')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(code, name, lat, long);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SeoulBu &&
          other.code == this.code &&
          other.name == this.name &&
          other.lat == this.lat &&
          other.long == this.long);
}

class SeoulBusCompanion extends UpdateCompanion<SeoulBu> {
  final Value<String> code;
  final Value<String> name;
  final Value<double> lat;
  final Value<double> long;
  const SeoulBusCompanion({
    this.code = const Value.absent(),
    this.name = const Value.absent(),
    this.lat = const Value.absent(),
    this.long = const Value.absent(),
  });
  SeoulBusCompanion.insert({
    required String code,
    required String name,
    required double lat,
    required double long,
  })  : code = Value(code),
        name = Value(name),
        lat = Value(lat),
        long = Value(long);
  static Insertable<SeoulBu> custom({
    Expression<String>? code,
    Expression<String>? name,
    Expression<double>? lat,
    Expression<double>? long,
  }) {
    return RawValuesInsertable({
      if (code != null) 'code': code,
      if (name != null) 'name': name,
      if (lat != null) 'lat': lat,
      if (long != null) 'long': long,
    });
  }

  SeoulBusCompanion copyWith(
      {Value<String>? code,
      Value<String>? name,
      Value<double>? lat,
      Value<double>? long}) {
    return SeoulBusCompanion(
      code: code ?? this.code,
      name: name ?? this.name,
      lat: lat ?? this.lat,
      long: long ?? this.long,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (code.present) {
      map['code'] = Variable<String>(code.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (lat.present) {
      map['lat'] = Variable<double>(lat.value);
    }
    if (long.present) {
      map['long'] = Variable<double>(long.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SeoulBusCompanion(')
          ..write('code: $code, ')
          ..write('name: $name, ')
          ..write('lat: $lat, ')
          ..write('long: $long')
          ..write(')'))
        .toString();
  }
}

class $SeoulBusTable extends SeoulBus with TableInfo<$SeoulBusTable, SeoulBu> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SeoulBusTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _codeMeta = const VerificationMeta('code');
  @override
  late final GeneratedColumn<String?> code = GeneratedColumn<String?>(
      'code', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String?> name = GeneratedColumn<String?>(
      'name', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _latMeta = const VerificationMeta('lat');
  @override
  late final GeneratedColumn<double?> lat = GeneratedColumn<double?>(
      'lat', aliasedName, false,
      type: const RealType(), requiredDuringInsert: true);
  final VerificationMeta _longMeta = const VerificationMeta('long');
  @override
  late final GeneratedColumn<double?> long = GeneratedColumn<double?>(
      'long', aliasedName, false,
      type: const RealType(), requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [code, name, lat, long];
  @override
  String get aliasedName => _alias ?? 'seoul_bus';
  @override
  String get actualTableName => 'seoul_bus';
  @override
  VerificationContext validateIntegrity(Insertable<SeoulBu> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('code')) {
      context.handle(
          _codeMeta, code.isAcceptableOrUnknown(data['code']!, _codeMeta));
    } else if (isInserting) {
      context.missing(_codeMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('lat')) {
      context.handle(
          _latMeta, lat.isAcceptableOrUnknown(data['lat']!, _latMeta));
    } else if (isInserting) {
      context.missing(_latMeta);
    }
    if (data.containsKey('long')) {
      context.handle(
          _longMeta, long.isAcceptableOrUnknown(data['long']!, _longMeta));
    } else if (isInserting) {
      context.missing(_longMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => <GeneratedColumn>{};
  @override
  SeoulBu map(Map<String, dynamic> data, {String? tablePrefix}) {
    return SeoulBu.fromData(data, attachedDatabase,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $SeoulBusTable createAlias(String alias) {
    return $SeoulBusTable(attachedDatabase, alias);
  }
}

abstract class _$MyDatabase extends GeneratedDatabase {
  _$MyDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  late final $SeoulBusTable seoulBus = $SeoulBusTable(this);
  late final SeoulBusDao seoulBusDao = SeoulBusDao(this as MyDatabase);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [seoulBus];
}
