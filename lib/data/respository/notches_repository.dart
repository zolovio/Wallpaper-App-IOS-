import 'package:wallpaper_app/data/models/color_model.dart';
import 'package:wallpaper_app/data/models/notches_model.dart';
import 'package:wallpaper_app/data/models/wallpaper_model.dart';
import 'package:wallpaper_app/data/services/color_service.dart';
import 'package:wallpaper_app/data/services/notches_service.dart';
import 'package:wallpaper_app/data/services/wallpaper_service.dart';

class NotchesRepository{
  NotchesService service=NotchesService();
   Future<NotchesModel> getNotchesList() async {
     NotchesModel model=NotchesModel();
     model= await service.getNotchesList();
     return model;
   }
}