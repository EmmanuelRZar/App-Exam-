import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class slideicon extends StatefulWidget {
  slideicon({Key? key}) : super(key: key);

  @override
  State<slideicon> createState() => _slideiconState();
}

class _slideiconState extends State<slideicon> {

  final images = [
    'assets/imgs/van.png',
    'assets/imgs/sign.png',
    'assets/imgs/car-rent.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
    child: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.75,
            child: Padding(
              padding: EdgeInsets.only(top:  20),
              child: CarouselSlider.builder(
                itemCount: images.length,
                itemBuilder: (context, index, realIndex){
                  final FISHimage = images[index];
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
                width: 200,
                height: 45,
              ),
            ),
          )
        ],
      ),          
    );
  }
Widget buildImage( String images, int index) => ClipRRect(
  child: Container(
    margin: const EdgeInsets.symmetric(horizontal: 1),
    child: Image.asset(images, fit: BoxFit.cover,),
  ),
);
}