import 'package:path_provider/path_provider.dart';
import 'dart:io';

class FileUtils{
  static Future<String> get getFilePath async{
    final directory = await getApplicationDocumentsDirectory();
    return directory.path;
  }

  //get file. uses dart.io
  static Future<File> get getFile async {
    final path = await getFilePath;
    return File('$path/myFile.txt');
  }

  //save contents of file/ write file
  static Future<File> saveToFile(String data) async {
    final file = await getFile;
    return file.writeAsString(data);
  }

  //read from file
  static Future<String> readFromFile() async {
    try{ 
      final file = await getFile;
      String fileContents = await file.readAsString();
      return fileContents;
    }catch(e){
      return"";
    }
  }
}