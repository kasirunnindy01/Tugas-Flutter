// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:nindy/main.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Verify that our counter starts at 0.
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    // Tap the '+' icon and trigger a frame.
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Verify that our counter has incremented.
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
  });
}
void main() {
  //tipe data dan variable
  //var
  var mahasiswa = "Jejen";
  var umur = 20;

  print(mahasiswa + " Umur = " + umur.toString());

  //string
  String mahasiswaString;
  mahasiswaString = "Aan";

  print(mahasiswaString);

  //int
  int semester;
  semester = 6;

  print(semester);

  //double
  double ipk;
  ipk = 3;

  print(ipk);

  //boolean
  bool benar = true;
  bool salah = false;
  bool tidakbenar = !true;
  bool tidaksalah = !false;

  //list
  List jurusan = [
    "Teknik Informatika",
    "Sistem Informasi",
    "DKV",
    semester.toString(),
    ipk.toString()
  ];

  print(jurusan);

  //map
  Map<String, dynamic> kelas = {
    "nama": "Beben",
    "kelas": "TI 3",
  };

  print(kelas);
  print(kelas['nama']);
  print(kelas['kelas']);

  //Operator
  int a, b;
  a = 9;
  b = 7;
  print("a = " + a.toString());
  print("b = " + b.toString());

  print(a + b);
  print(a - b);
  print(a / b);
  print(a * b);
  print(a > b);
  print(a < b);
  print(a >= b);
  print(a <= b);

    //conditional
  print("Conditional");
  var  nilai;
  nilai = 80;

   if (nilai >= 80) {
    print('A');
  }else if (nilai <= 80 && nilai >= 50) {
    print('B');
  }else{
    (print('Tidak Lulus'));
  }

  print('----------------');
  nilai  >= 80? print ('A'):print('Tidak A');

  //function
  print("Function");

  hitungNilai();
  hitungNilai1(75, 90);
  var p = hitungNilai1(2, 50);
  print(p);
  var n = hitungNilai2(mapel1: 50, mapel2: 2);
  print(n);
  var o = hitungNilai3(79, 100);


  //final keyword  => imutable / tidak bisa dirubah
  //conts final
  //conts
  //const string mahasiswa=  "beben";
  //final
  final String mahasiswafk ;

  mahasiswafk = "beben";

  print(mahasiswafk);

  //null safety
  // ? ! late
  // ? digunakan dia boleh null
// String? jurusan;
// untuk diisi nanti
  late String jurusan;

  jurusan =  "Teknik Informatika";
  //  jurusan = "TI";
  // ! memaksa untuk dijalankan /  yakin ada datanya
  print(jurusan.length);

  //perulangan looping
  //for plus
  for(int no = 1; no <= 5; no++){
    print (no);
  }
  //for minus
  for(int no = 5; no >= 1; no--){
    print (no);
  }

  //while
  int no1 = 1;
  int no2 = 5;
  while(no1 <= no2){
    print(no1);
    no1++;
  }
  // do while
  int no3 = 1;
  int no4 = 5;
  do{
    print (no3);
    no3++;
  }while(no3 <= no4);
}

//function
hitungNilai() {
  print("hitung nilai");
}

//positional argument
hitungNilai1(mapel1, mapel2, [mapel3]) {
  var nilaiAkhir;
  if (mapel3 != null) {
    nilaiAkhir = mapel1 / mapel2 + mapel3;
  } else {
    nilaiAkhir = mapel1 / mapel2;
  }
  return nilaiAkhir;
}

//name argument
hitungNilai2({mapel1, mapel2}) {
  var nilaiAkhir;
  if (mapel2 != null) {
    nilaiAkhir = mapel1 / mapel2;
  } else {
    nilaiAkhir = mapel1;
  }
  return nilaiAkhir;

  //void
void hitungNilai3(mapel1, mapel2) {
  var nilaiakhir = mapel1 + mapel2;
  print(nilaiakhir);

  //oop
  //class

  class Parfum  {
   String? merk;
   String? jenis;
   int? harga;

   //construktor
   Parfum ({this.merk, this.jenis, this.harga});

   //method
   berat(int berat){
     print (berat.toString() + "ml");
   }
 }

 //inheritance / pewarisan
class AuDeParfum extends Parfum{
  int? ketahanan;
  int? kandungan;

  AuDeParfum({String? merk, this.ketahanan, this.kandungan}):super(merk: merk);
}
void main() {
  //instansiasi
  var k1 = Parfum(merk: "Channel", jenis: "AuDeParfum", harga:  500000);

  print(k1.berat(30));
  print(k1.merk);
  print(k1.jenis);
  print(k1.harga);

  var k2 = Parfum(merk: "Gucci", jenis: "Spray", harga: 300000);
  var kandungan = k2.berat(45);
  print(kandungan);
  print(k2.merk);
  print(k2.jenis);
  print(k2.harga);

  var s1 = Parfum(ketahanan: 1hari, kandungan: 50%, merk: "Channel");
  print("-----");
  print(s1.ketahanan);
  print(s1.kandungan);
  print(s1.merk);
}

void main(List<String> args) {
int i, j, k, rows;
rows = 5;
for (i= 1; i<= rows ; i++) {
for (j=i; j <rows ;j++) {
stdout.write(" ");
}
for (k=1; k<=i;k++) {
stdout.write("");
}
print("");
}
for (i=rows; i>=1; i--){
for(j=i; j<=rows;j++){
stdout.write(" ");
}
for(k=1; k<i ;k++) {
stdout.write("");
}
print("");
}
}
