import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:wallpaper_app/data/controllers/bottom_controller.dart';
import 'package:wallpaper_app/data/controllers/wallpaper_controller.dart';
import 'package:wallpaper_app/data/singleton.dart';
import 'package:wallpaper_app/ui/screens/home/home_screen.dart';



class WallpaperScreen extends GetView<WallpaperController> {



  @override
  WallpaperController controller=Get.put(WallpaperController());
  BottomNavbarController bottomNavbarController=Get.put(BottomNavbarController());


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,

      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 80,),
            Container(
             padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(children: [
                IconButton(onPressed: (){
                  bottomNavbarController.pageIndex.value=0;
                  Get.offAll(HomeScreen());
                }, icon: const Icon(Icons.arrow_back_ios,color: Colors.white,size: 24,)),
                Text("Choose Wallpaper",
                style:Theme.of(context).textTheme.headline6?.copyWith(color: Colors.white)
                )
              ],),
            ),

        controller.obx(
              (state)=>   Container(
              height: MediaQuery.of(context).size.height*0.8,
            //  color: Colors.black,
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child:GridView.builder(
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 160,
                      childAspectRatio: 0.46,
                      crossAxisSpacing: 3,
                      mainAxisSpacing: 2),
                  itemCount: state!.result!.length+1,
                  itemBuilder: (BuildContext ctx, index) {
                    return index==0?GestureDetector(
                      onTap: () async {
                        final ImagePicker _picker = ImagePicker();
                        // Pick an image
                        final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
                       Singleton.instance.wallpaperFromGallery=image;
                       Singleton.instance.defaultWallpaper="";
                       Singleton.instance.wallpaperFromServer="";
                        bottomNavbarController.pageIndex.value=0;
                        Get.offAll(HomeScreen());
                      },
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            //border: Border.all(color: Colors.black,width: 1),
                            borderRadius: BorderRadius.circular(0)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(Icons.add_a_photo_outlined),
                              SizedBox(height: 10,),
                              Text("Add Photo From Library",
                              textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ):GestureDetector(
                    onTap: (){
                      Singleton.instance.wallpaperFromGallery=null;
                      Singleton.instance.defaultWallpaper="";
                      Singleton.instance.wallpaperFromServer=state.result![index-1].image!;
                      bottomNavbarController.pageIndex.value=0;
                      Get.offAll(HomeScreen());
                    },
                      child: Container(
                        alignment: Alignment.center,

                        decoration: BoxDecoration(

                            borderRadius: BorderRadius.circular(0)),
                        child: Image.network(state.result![index-1].image!,
                        fit: BoxFit.contain,
                          repeat: ImageRepeat.noRepeat,

                        ),
                      ),
                    );
                  }),
            ),
          onLoading: const Center(child: CircularProgressIndicator()),
          onEmpty: const Text('No Wallpaper found'),

          // here also you can set your own error widget, but by
          // default will be an Center(child:Text(error))
          onError: (error)=>Text(error!),

        ),
          ],
        ),
      ),
    );
  }
}
