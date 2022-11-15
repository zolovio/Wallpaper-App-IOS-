import 'package:flutter/material.dart';

class GalleryScreen extends StatefulWidget {
  const GalleryScreen({Key? key}) : super(key: key);

  @override
  _GalleryScreenState createState() => _GalleryScreenState();
}

class _GalleryScreenState extends State<GalleryScreen> {

  List<String> wallpapers=[
    "",
    "assets/wallpapers/iPhone14ProWallpaperBlacks.png",
    "assets/wallpapers/iPhone14ProWallpaperGolds.png",
    "assets/wallpapers/iPhone14ProWallpaperPurples.png",
    "assets/wallpapers/iPhone14ProWallpaperSilvers.png",
    "assets/wallpapers/iPhone14WallpaperBlacks.png",
    "assets/wallpapers/iPhone14WallpaperBlues.png",
    "assets/wallpapers/iPhone14WallpaperPurples.png",
    "assets/wallpapers/iPhone14WallpaperReds.png",
    "assets/wallpapers/iPhone14WallpaperWhites.png"
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        elevation: 0,
    title: const Center(child: Text('Choose Wallpaper')),
    flexibleSpace: Container(
    decoration: const BoxDecoration(
    gradient: LinearGradient(
    colors: [
     Colors.black,
     Colors.black,
    ],

    begin: Alignment.bottomCenter,
    end: Alignment.topCenter,
    stops: [0.0, 1.0],
    tileMode: TileMode.clamp),

    ),
    ),

    ),
      body: Container(
        color: Colors.black,
        padding: EdgeInsets.symmetric(horizontal: 12),
        child:GridView.builder(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 150,
                childAspectRatio: 0.7,
                crossAxisSpacing: 2,
                mainAxisSpacing: 2),
            itemCount: wallpapers.length,
            itemBuilder: (BuildContext ctx, index) {
              return index==0?Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.black,width: 1),
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
              ):Container(
                alignment: Alignment.center,

                decoration: BoxDecoration(
                    gradient: const LinearGradient(
                        colors: [
                          Colors.indigoAccent,
                          Colors.blueAccent,
                          // Colors.blueGrey,
                        ],
                        begin: FractionalOffset(0.0, 0.0),
                        end: FractionalOffset(1.0, 0.0),
                        stops: [0.0, 1.0],
                        tileMode: TileMode.clamp),
                    color: Colors.amber,
                   // border: Border.all(color: Colors.black,width: 1),
                    borderRadius: BorderRadius.circular(0)),
                child: Image.asset(wallpapers[index],
                fit: BoxFit.cover,
                  height: 200,
                  width: 200,
                ),
              );
            }),
      ),
    );
  }
}
