import 'package:flutter/material.dart';
import 'package:flutter_realm_1/car.dart';
import 'package:realm/realm.dart';
// import 'car.realm.dart'; // Impor file yang dihasilkan oleh build runner

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CarListScreen(), // Halaman utama yang menampilkan daftar mobil
    );
  }
}

class CarListScreen extends StatefulWidget {
  const CarListScreen({super.key});

  @override
  _CarListScreenState createState() => _CarListScreenState();
}

class _CarListScreenState extends State<CarListScreen> {
  late Realm realm;
  late List<Car> cars;

  @override
  void initState() {
    super.initState();
    final config = Configuration.local([Car.schema]);
    realm = Realm(config);

    // Menambahkan objek Car baru ke dalam Realm
    final car = Car(1, 'Toyota', 'Corolla');
    realm.write(() {
      realm.add(car);
    });

    // Mengambil semua Car dari Realm
    cars = realm.all<Car>().toList();
  }

  @override
  void dispose() {
    realm.close(); // Menutup Realm ketika tidak digunakan
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Daftar Mobil')),
      body: Expanded(
        child: ListView.builder(
          itemCount: cars.length,
          itemBuilder: (context, index) {
            final car = cars[index];
            return ListTile(
              title: Text('${car.brand} ${car.model}'),
              subtitle: Text('ID: ${car.id}'),
            );
          },
        ),
      ),
    );
  }
}
