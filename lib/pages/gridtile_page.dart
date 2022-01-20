import 'package:flutter/material.dart';

class GridTilePage extends StatefulWidget {
  GridTilePage({Key? key}) : super(key: key);
  static const String id = "grid_tile_page";

  @override
  _GridTilePageState createState() => _GridTilePageState();
}

class _GridTilePageState extends State<GridTilePage> {
  bool onTap = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: false,
      drawer: const Drawer(),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: const Text("Apple Products"),
        actions: [
          Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
            height: 35,
            width: 35,
            decoration: BoxDecoration(
              color: Colors.grey.shade700,
              borderRadius: BorderRadius.circular(7.5),
            ),
            child: const Text("7", style: TextStyle(color: Colors.white, fontSize: 17, fontWeight: FontWeight.bold),),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //#header
            Container(
              height: 225,
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: AssetImage('assets/images/img_2.png'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(25),
              ),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.center,
                        colors: [
                          Colors.black.withOpacity(0.5),
                          Colors.black.withOpacity(0.35),
                          Colors.black.withOpacity(0.2),
                          Colors.black.withOpacity(0.1),
                        ]
                    )
                ),
                child: Column(
                  children: [

                    //#Lifestyle
                    const Expanded(
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Text("Lifestyle safe", style: TextStyle(fontSize: 30, color: Colors.white),),
                        )
                    ),

                    //#ShowNow
                    Container(
                      padding: const EdgeInsets.only(bottom: 25, top: 30, left: 30, right: 30),
                      child: MaterialButton(
                        height: 45,
                        minWidth: double.infinity,
                        onPressed: (){},
                        child: const Text("Shop Now", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),),
                        color: Colors.white,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //#body
            GridView.builder(
                shrinkWrap: true,
                padding: const EdgeInsets.all(20),
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  crossAxisSpacing: 40,
                  mainAxisSpacing: 20,
                ),
                itemCount: 10,
                itemBuilder: (context, index){
                  return buildGridTile(index);
                }
            ),
          ],
        ),
      ),
    );
  }

  Widget buildGridTile(int index) {
    return GestureDetector(
      onDoubleTap: (){
      },
      child: GridTile(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            image: DecorationImage(
              image: AssetImage("assets/images/img_${index % 5}.png"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        footer: const GridTileBar(
          backgroundColor: Colors.transparent,
          subtitle: Text(""),
          trailing: Icon(Icons.star_border_outlined, size: 35, color: Colors.yellow,),
        ),
      ),
    );
  }
}
