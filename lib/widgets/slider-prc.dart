import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';


class myslide extends StatefulWidget {

  @override
  State<myslide> createState() => _myslideState();
}

class _myslideState extends State<myslide> {
  
  final FISHimages = [
    'assets/imgs/IMG1.png',
    'assets/imgs/IMG2.jpg',
    'assets/imgs/IMG3.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
    child: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.85,
            child: Padding(
              padding: EdgeInsets.only(top:  15),
              child: CarouselSlider.builder(
                itemCount: FISHimages.length,
                itemBuilder: (context, index, realIndex){
                  final FISHimage = FISHimages[index];
                  return buildImage(FISHimage, index);
                },
                options: CarouselOptions(
                  height: MediaQuery.of(context).size.height * 0.75,
                  autoPlay: true,
                  enlargeCenterPage: true,
                ),
              ),
            ),
          ),
          Container(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                width: 400,
                height: 300,
              ),
            ),
          )
        ],
      ),      
    );
  }
Widget buildImage( String FISHimage, int index) => ClipRRect(
  borderRadius: BorderRadius.circular(10),
  child: Container(
    margin: const EdgeInsets.symmetric(horizontal: 1),
    child: Image.asset(FISHimage, fit: BoxFit.cover, width: 500,),
  ),
);
}