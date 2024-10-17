import 'package:realm/realm.dart'; // Pastikan impor ini ada

part 'task.realm.dart'; // Sesuaikan dengan nama model kamu

@RealmModel()
class _Task {
  // Kelas dengan nama yang unik dan sesuai
  @PrimaryKey()
  late int id;
  late String brand;
  late String model;
}
