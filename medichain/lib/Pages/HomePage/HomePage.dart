import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medichain/Pages/HomePage/Components/Appointments.dart';
import 'package:medichain/Pages/HomePage/Components/NewsCard.dart';
import 'package:medichain/Pages/ProfilePage/ProfilePage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  String name = 'Kartik Goyal';

  // ignore: prefer_final_fields
  List<Widget> _NewsCarouselItems = [
    NewsCard(image_path: 'assets/NewsCards/image_1.jpg'),
    NewsCard(image_path: 'assets/NewsCards/image_2.jpg'),
    NewsCard(image_path: 'assets/NewsCards/image_3.jpg'),
    ];
  final CarouselSliderController _controller = CarouselSliderController();
  int _current_carousel = 0 ;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding:const EdgeInsets.symmetric(vertical: 50,horizontal: 9),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // App Bar Profile
            // Row(
            //   children: [
            //     CircleAvatar(
            //       radius: 33,
            //       backgroundImage:AssetImage(profile_picture_link,),
            //     ),
      
            //     const SizedBox(
            //       width: 20,
            //     ),
      
            //     Text(name, style:GoogleFonts.sofiaSansExtraCondensed(
            //       fontSize: 30,
            //       fontWeight: FontWeight.w800,
                  
            //     ))
            //   ],
            // ),
            // const SizedBox(
            //   height:40 ,
            // ),
            
            //NEWS CAROUSEL 
            CarouselSlider(
              items: _NewsCarouselItems,
              options: CarouselOptions(
                  height: 200.0, 
                  enlargeCenterPage: true, 
                  autoPlay: true, 
                  aspectRatio: 16 / 9, 
                  autoPlayCurve: Curves.fastOutSlowIn, 
                  enableInfiniteScroll: true, 
                  autoPlayAnimationDuration: Duration(milliseconds: 800), 
                  viewportFraction: 0.8, 
                  onPageChanged: (index, reason) {
                    setState(() {
                      _current_carousel = index;
                    });
                  },
      
              ),
            ),
      
      
            const SizedBox(height: 10),
      
            // CAROUSEL SLIDER
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: _NewsCarouselItems.asMap().entries.map((entry) {
                return GestureDetector(
                  onTap: () => _controller.animateToPage(entry.key),
                  child: Container(
                    width: 8.0,
                    height: 8.0,
                    margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: (Theme.of(context).brightness == Brightness.dark
                          ? Colors.white
                          : Colors.black)
                          .withOpacity(_current_carousel == entry.key ? 0.9 : 0.2),
                    ),
                  ),
                );
              }).toList(),
          ),
      
            const SizedBox(
              height: 30,
            ),
      
            Text("Your Appointments", 
              textAlign: TextAlign.left,
              style: GoogleFonts.robotoCondensed(
                fontSize: 35,
                
              )
            ),
            const  SizedBox(
              height: 30,
            ),
            
            Appointments(),

            const SizedBox(
              height: 50,
            )
      
          ],
        ),
      ),
    );
  }
}