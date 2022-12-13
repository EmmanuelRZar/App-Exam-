import 'package:flutter/material.dart';
import 'package:pvtransferapp/models/carros-detalles.dart';

List<ImageDetails> _images = [
  ImageDetails(
      imageRuta:
          'https://www.kia.com/content/dam/kwcms/mx/es/images/showroom/2022/rio-sd-bn/configura/spack/Configura_tu_kia_RioSD-Spack-Snow-white-Pearl.png',
      producto: 'SEDAN',
      nombre: 'KIA Rio 2022',
      precio: '\$1250.00',
      descripcionTitulo: 'Sedan Rio',
      descripcionDetallada:
          '4-door Sedan vehicle for 4 passengers'),
  ImageDetails(
      imageRuta:
          'https://s3.amazonaws.com/kia.com.co/medium_Rio_Sedan_Rojo_09_c5a11c26f8.png',
      producto: 'SEDAN',
      nombre: 'KIA Rio 2022',
      precio: '\$1250.00',
      descripcionTitulo: 'Sedan Rio',
      descripcionDetallada:
          '4-door Sedan vehicle for 4 passengers'),
  ImageDetails(
      imageRuta:
          'https://chevrolet-tlalpan.com/wp-content/uploads/2020/09/trax-colores_0003_Capa-5.png',
      producto: 'SUV',
      nombre: 'Chevrolet Tracker',
      precio: '\$1750.00',
      descripcionTitulo: 'Suv Tracker',
      descripcionDetallada:
          '4-door SUV vehicle for 4 passengers'),
  ImageDetails(
      imageRuta:
          'https://chevrolet-tlalpan.com/wp-content/uploads/2020/09/trax-colores_0005_Capa-2.png',
      producto: 'SUV',
      nombre: 'Chevrolet Tracker',
      precio: '\$1750.00',
      descripcionTitulo: 'Suv Tracker',
      descripcionDetallada:
          '4-door SUV vehicle for 4 passengers'),
  ImageDetails(
      imageRuta:
          'https://www.kia.com/content/dam/kwcms/mx/es/images/showroom/2022/seltos/360/exterior/white-blackroof/WhiteAndBlack_0006.png',
      producto: 'SUV',
      nombre: 'KIA Seltos 2022',
      precio: '\$2100.00',
      descripcionTitulo: 'Suv Seltos',
      descripcionDetallada:
          '4-door SUV vehicle for 4 passengers'),
  ImageDetails(
      imageRuta:
          'https://s3-us-west-2.amazonaws.com/my-car-mexico/modelos/668325f4/featured_image.png',
      producto: 'SUV VAN',
      nombre: 'HONDA BR-V',
      precio: '\$1950.00',
      descripcionTitulo: 'Suv Van',
      descripcionDetallada:
          '4-door SUV vehicle for 7 passengers.'),
];


class Carros extends StatefulWidget {
  Carros({Key? key}) : super(key: key);

  @override
  State<Carros> createState() => _CarrosState();
}

class _CarrosState extends State<Carros> {
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
          if(ismobile(context))
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