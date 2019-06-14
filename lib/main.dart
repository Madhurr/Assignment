// Name: Madhur Jain
// Email Address: madhurjain874@gmail.com
// phone number: 9644898911
// Location: Faridabad



import 'dart:io';
import 'dart:async';
import 'dart:convert';

import 'Model/CoardinateModel.dart';
void main () {
  readFileSync();
}
void readFileSync() {
  //Please Specify Your File Path
  print("Madhur Nobbas Assignment");
  String contents = new File('/Users/madhur/Desktop/dartFinal/lib/data.txt').readAsStringSync();
  print(contents);
  json.decode(contents);
  print("After  Converting it to JSON");
  print(contents);
  var entryList = jsonDecode(contents);
  for (var i=0; i<entryList['hitPoints'].length;i++)
  {
      if(entryList['plane']['topLeft']['x'] <= entryList['hitPoints'][i]['x'] && entryList['hitPoints'][i]['x'] <= entryList['plane']['bottomRight']['x'] &&  entryList['plane']['topLeft']['y'] <= entryList['hitPoints'][i]['y'] && entryList['hitPoints'][i]['y'] <= entryList['plane']['bottomRight']['y']){
        print("True");

      }
      else{
        print("False");
      }
  }
  
//   void iterateMapEntry(key, value) {
//       user[key] = value;
//       print('$key:$value');//string interpolation in action
//     }
//     user.forEach(iterateMapEntry);
// }
}


