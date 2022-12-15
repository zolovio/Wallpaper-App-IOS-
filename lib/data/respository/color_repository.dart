import 'package:wallpaper_app/data/models/color_model.dart';
import 'package:wallpaper_app/data/services/color_service.dart';

class ColorRepository{
  ColorService service=ColorService();
   Future<ColorsModel> getColorList() async {
     ColorsModel model=ColorsModel();
     model= await service.getColorList();
     return model;
   }
}