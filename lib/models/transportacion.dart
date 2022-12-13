import 'package:flutter/material.dart';
import 'package:pvtransferapp/models/transport-det.dart';

List<ImageDetails> _images = [
  ImageDetails(
      imageRuta:
          'https://www.chevrolet.com.mx/content/dam/chevrolet/na/mx/es/index/crossovers-suvs/2022-suburban/colorizer/01-images/jellys/negro.jpg?imwidth=960',
      producto: 'Transport',
      nombre: 'Suburban',
      precio: '\$3250.00',
      descripcionTitulo: 'Transportation',
      descripcionDetallada:
          'Private transportation in suburban, with capacity for 6 passengers'),
  ImageDetails(
      imageRuta:
          'https://gobernadordevelocidad.com.mx/imagenes/filtro/sprinter.jpg',
      producto: 'Transport',
      nombre: 'Sprinter large',
      precio: '\$2250.00',
      descripcionTitulo: 'Transportation',
      descripcionDetallada:
          'Private transportation in sprinter up to 2 passengers'),
  ImageDetails(
      imageRuta:
          'https://www.nicepng.com/png/detail/336-3368614_pause-mercedes-sprinter-2018-png.png',
      producto: 'Transport',
      nombre: 'Sprinter Large',
      precio: '\$1750.00',
      descripcionTitulo: 'Transportation',
      descripcionDetallada:
          'Private transportation in sprinter up to 2 passengers'),
];


class Transportacion extends StatefulWidget {
  Transportacion({Key? key}) : super(key: key);

  @override
  State<Transportacion> createState() => _TransportacionState();
}

class _TransportacionState extends State<Transportacion> {
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