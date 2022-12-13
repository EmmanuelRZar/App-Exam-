import 'package:flutter/material.dart';
import 'package:pvtransferapp/models/aventuras-det.dart';

List<ImageDetails> _images = [
  ImageDetails(
      imageRuta:
          'https://cdn.vallarta-adventures.com/sites/default/files/2020-12/Caletas_thumbnails_%201.jpg',
      producto: 'Tour',
      nombre: 'Las Caletas',
      precio: '\$3250.00',
      descripcionTitulo: 'Tour',
      descripcionDetallada:
          'On the Las Caletas Tour, spend time out at sea on a kayak or marvel at the areas many underwater wonders while snorkeling or paddle boarding just offshore. Take a guided nature walk and meet some of the permanent residents of Las Caletas, including friendly macaws and beautiful parrots.'),
  ImageDetails(
      imageRuta:
          'https://cdn.vallarta-adventures.com/sites/default/files/2018-01/1-IMAGE%20800x500_9.jpg',
      producto: 'Tour',
      nombre: 'Outdoor',
      precio: '\$2250.00',
      descripcionTitulo: 'Tour',
      descripcionDetallada:
          'Calling all thrill-seekers: get ready for a day of high-energy fun on this Outdoor Zipline Adventure tour! Your day starts on the water with a scenic speed boat ride to a hidden beach called Boca de Tomatlan.'),
  ImageDetails(
      imageRuta:
          'https://cdn.vallarta-adventures.com/sites/default/files/2019-03/upside%20down%20zipline_1.jpeg',
      producto: 'Tour',
      nombre: 'Extreme Adventures',
      precio: '\$1750.00',
      descripcionTitulo: 'Tour',
      descripcionDetallada:
          'Get ready for the excursion of your life on this action-packed Extreme Zip Line Adventure tour! This full-day canopy tour begins in an air-conditioned van ride to the Verdant Rain Forest.'),
  ImageDetails(
      imageRuta:
          'https://cdn.vallarta-adventures.com/sites/default/files/2017-12/yelapa-majahuitas-vallarta-adventures-1.jpg',
      producto: 'Tour',
      nombre: 'Yelapa & Majahuitas',
      precio: '\$1550.00',
      descripcionTitulo: 'Tour',
      descripcionDetallada:
          'Ready to spend a relaxing day in the south part of the bay and experience a little bit of the coastal life of Mexico? Then you won’t want to miss out on this amazing tour that lets you explore the small fishing town of Yelapa, as well as the secluded Majahuitas beach.'),
];


class Aventuras extends StatefulWidget {
  Aventuras({Key? key}) : super(key: key);

  @override
  State<Aventuras> createState() => _AventurasState();
}

class _AventurasState extends State<Aventuras> {
  @override
  Widget build(BuildContext context) {

    final ancho = MediaQuery.of(context).size.width;
    final alto = MediaQuery.of(context).size.height;

    bool isDesktop(BuildContext context)=> ancho >=600;
    bool ismobile(BuildContext context)=> ancho <600;  

    return Scaffold(
   backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: SafeArea(
        child: Column(crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 20,),
          SizedBox(height: 10,),
          Expanded(child: Container(
            decoration: BoxDecoration(
              /*gradient: LinearGradient(
                colors: [
                     Color.fromARGB(222, 23, 43, 105),
                      Color.fromARGB(255, 38, 37, 116),
                ]
              ),*/
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(5),
                topRight: Radius.circular(5)
              )
            ),
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: isDesktop(context) ? 4 : 2,
                crossAxisSpacing: 10, 
                mainAxisSpacing: 10,
                ), 
              itemBuilder: (BuildContext context, int index) {
                return RawMaterialButton(
                  onPressed: (){
                    Navigator.push(context, 
                    MaterialPageRoute(builder: 
                    (context)=> Carros1(
                      imageRuta: _images [index].imageRuta,
                      producto: _images[index].producto,
                      nombre: _images[index].nombre,
                      precio: _images[index].precio,
                      descripcionTitulo: _images[index].descripcionTitulo,
                      descripcionDetallada: _images[index].descripcionDetallada,
                    )));
                  },
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(23, 0, 0, 0),
                        blurRadius: 2,
                        offset:  Offset(4, 8),
                        )
                      ],
                      color: Color.fromARGB(146, 255, 255, 255),                    
                    borderRadius: BorderRadius.circular(10),
                    /*image: DecorationImage(
                      image: NetworkImage(_images[index].imageRuta),
                      fit: BoxFit.contain,
                      ),*/                      
                  ),
                  child: Center(
                    child: Column(
                      children: [
                        SizedBox(height: 25,),
                        Image.network(_images[index].imageRuta, fit: BoxFit.contain,),
                        Text(_images[index].nombre, style: TextStyle(fontSize: 15),),
                      ],
                    ),
                  ),
                ),

                );
              },
              itemCount: _images.length,
            ),
          ))
        ],) ),
    );
  }
}

class ImageDetails {
  final String imageRuta;
  final String producto;
  final String nombre;
  final String precio;
  final String descripcionTitulo;
  final String descripcionDetallada;

  ImageDetails({
    required this.imageRuta,
    required this.producto,
    required this.nombre,
    required this.precio,
    required this.descripcionTitulo,
    required this.descripcionDetallada,
  });
}