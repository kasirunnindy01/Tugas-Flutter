void main () async {
  func1();

// await func4(60), then(
//    (value) {
//        print(value);
//        print('then');
//    },
// }. catchError((error) {
//    print(error);
//    print('error');
// )};


try {
  var value = await func4(30);
  print (value);
  print ('try');
} catch (error) {
  print (error);
  print('error');
}
  func2();
  func3();
}​
func1 (){
    print ('function 1');

}​
func2 (){
  print ('function 2');
}​
func3 (){
 print ('function 3');
}  
Future<String> func4(int nilai){
  return Future.delayed(Duration(seconds :2), () {
    if (nilai >50){
            return "Lulus";
      } else {
      throw "Error Tidak Lulus";
    }

});
}

1 of 1
Console
function 1
Error Tidak Lulus
error
function 2
function 3
Documentation
keyboard
Privacy notice Send feedback
no issues
Based on Flutter 2.10.5 Dart SDK 2.16.2
info
