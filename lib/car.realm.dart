// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'car.dart';

// **************************************************************************
// RealmObjectGenerator
// **************************************************************************

// ignore_for_file: type=lint
class Car extends _Car with RealmEntity, RealmObjectBase, RealmObject {
  Car(
    int id,
    String brand,
    String model,
  ) {
    RealmObjectBase.set(this, 'id', id);
    RealmObjectBase.set(this, 'brand', brand);
    RealmObjectBase.set(this, 'model', model);
  }

  Car._();

  @override
  int get id => RealmObjectBase.get<int>(this, 'id') as int;
  @override
  set id(int value) => RealmObjectBase.set(this, 'id', value);

  @override
  String get brand => RealmObjectBase.get<String>(this, 'brand') as String;
  @override
  set brand(String value) => RealmObjectBase.set(this, 'brand', value);

  @override
  String get model => RealmObjectBase.get<String>(this, 'model') as String;
  @override
  set model(String value) => RealmObjectBase.set(this, 'model', value);

  @override
  Stream<RealmObjectChanges<Car>> get changes =>
      RealmObjectBase.getChanges<Car>(this);

  @override
  Stream<RealmObjectChanges<Car>> changesFor([List<String>? keyPaths]) =>
      RealmObjectBase.getChangesFor<Car>(this, keyPaths);

  @override
  Car freeze() => RealmObjectBase.freezeObject<Car>(this);

  EJsonValue toEJson() {
    return <String, dynamic>{
      'id': id.toEJson(),
      'brand': brand.toEJson(),
      'model': model.toEJson(),
    };
  }

  static EJsonValue _toEJson(Car value) => value.toEJson();
  static Car _fromEJson(EJsonValue ejson) {
    if (ejson is! Map<String, dynamic>) return raiseInvalidEJson(ejson);
    return switch (ejson) {
      {
        'id': EJsonValue id,
        'brand': EJsonValue brand,
        'model': EJsonValue model,
      } =>
        Car(
          fromEJson(id),
          fromEJson(brand),
          fromEJson(model),
        ),
      _ => raiseInvalidEJson(ejson),
    };
  }

  static final schema = () {
    RealmObjectBase.registerFactory(Car._);
    register(_toEJson, _fromEJson);
    return const SchemaObject(ObjectType.realmObject, Car, 'Car', [
      SchemaProperty('id', RealmPropertyType.int, primaryKey: true),
      SchemaProperty('brand', RealmPropertyType.string),
      SchemaProperty('model', RealmPropertyType.string),
    ]);
  }();

  @override
  SchemaObject get objectSchema => RealmObjectBase.getSchema(this) ?? schema;
}
