import 'package:image_picker/image_picker.dart';

class Singleton {
  static Singleton _instance = Singleton._();



  XFile? wallpaperFromGallery;
  String? wallpaperFromServer="";
  String? defaultWallpaper="assets/wallpapers/defaultWallpaper.jpeg";
  String? selectedNotch="";

  Singleton._();

  static Singleton get instance => _instance;


}