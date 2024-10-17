import 'package:realm/realm.dart';

part 'car.realm.dart'; // Pastikan ini sesuai dengan file yang dihasilkan

@RealmModel()
class _Car {
  @PrimaryKey()
  late int id; // Properti untuk ID mobil
  late String brand; // Properti untuk merek mobil
  late String model; // Properti untuk model mobil
}
