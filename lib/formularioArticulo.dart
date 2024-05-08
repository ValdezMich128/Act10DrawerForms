import 'package:flutter/material.dart';
import 'package:valdez/drawer_menu.dart';

class FormA5 extends StatefulWidget {
  static const String routeName = '/formA5';

  @override
  _FormA5State createState() => _FormA5State();
}

class _FormA5State extends State<FormA5> {
  TextEditingController idApartadoController = TextEditingController();
  TextEditingController idsucursalController = TextEditingController();
  TextEditingController idClienteController = TextEditingController();
  TextEditingController anticipoController = TextEditingController();
  TextEditingController cantidadController = TextEditingController();
  TextEditingController detallesController = TextEditingController();
  TextEditingController fechaAnticipoController = TextEditingController();
  TextEditingController liquidacionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "SadBoyz",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color(0xff20518b),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      drawer: DrawerMenu(),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: ListView(
            shrinkWrap: true,
            children: [
              Text(
                'Formulario Articulo',
                style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff3e6777)),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text('ID Articulo', style: TextStyle(fontSize: 16)),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: idApartadoController,
                decoration: InputDecoration(
                  prefixIcon:
                      const Icon(Icons.numbers, color: Color(0xff3e6777)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(
                        color: Color(0xff3e6777)), // Color del borde
                  ),
                  hintText: 'Escribe el ID  del Articulo',
                ),
                keyboardType: TextInputType.number,
              ),

              //some space between name and email
              const SizedBox(
                height: 10,
              ),
              const Text('Nombre Articulo', style: TextStyle(fontSize: 16)),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: idsucursalController,
                decoration: InputDecoration(
                  prefixIcon:
                      const Icon(Icons.numbers, color: Color(0xff3e6777)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(
                        color: Color(0xff3e6777)), // Color del borde
                  ),
                  hintText: 'Escribe el Nombre del Articulo',
                ),
              ),
              //some space between email and mobile
              const SizedBox(
                height: 10,
              ),
              const Text('Descripcion', style: TextStyle(fontSize: 16)),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: idClienteController,
                decoration: InputDecoration(
                  prefixIcon:
                      const Icon(Icons.numbers, color: Color(0xff3e6777)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(
                        color: Color(0xff3e6777)), // Color del borde
                  ),
                  hintText: 'Escribe la descripcion',
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text('Talla', style: TextStyle(fontSize: 16)),
              const SizedBox(
                height: 5,
              ),
              TextField(
                //maxLines: 5,
                controller: anticipoController,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.money, color: Color(0xff3e6777)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(
                        color: Color(0xff3e6777)), // Color del borde
                  ),
                  hintText: 'Escribe la Talla',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              const Text('Id Sucursal', style: TextStyle(fontSize: 16)),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: cantidadController,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.list, color: Color(0xff3e6777)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(
                        color: Color(0xff3e6777)), // Color del borde
                  ),
                  hintText: 'Escribe el Id de la Sucursal',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              const Text('Id Marca', style: TextStyle(fontSize: 16)),
              const SizedBox(
                height: 5,
              ),
              TextField(
                //maxLines: 5,
                controller: detallesController,
                decoration: InputDecoration(
                  prefixIcon:
                      const Icon(Icons.details, color: Color(0xff3e6777)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(
                        color: Color(0xff3e6777)), // Color del borde
                  ),
                  hintText: 'Escribe el Id de la Marca',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              const Text('Tipo Articulo', style: TextStyle(fontSize: 16)),
              const SizedBox(
                height: 5,
              ),
              TextField(
                // maxLines: 5,
                controller: fechaAnticipoController,
                decoration: InputDecoration(
                  prefixIcon:
                      const Icon(Icons.library_books, color: Color(0xff3e6777)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(
                        color: Color(0xff3e6777)), // Color del borde
                  ),
                  hintText: 'Escribe el Tipo de Articulo',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              const Text('Precio', style: TextStyle(fontSize: 16)),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: liquidacionController,
                decoration: InputDecoration(
                  prefixIcon:
                      const Icon(Icons.payment, color: Color(0xff3e6777)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(
                        color: Color(0xff3e6777)), // Color del borde
                  ),
                  hintText: 'Escribe  el Precio',
                ),
              ),
              SizedBox(
                height: 15,
              ),
              //create button for register
              ElevatedButton(
                onPressed: () {
                  //we will trying to print input
                  print(idApartadoController.text);
                  print(idsucursalController.text);
                  print(idClienteController.text);
                  print(anticipoController.text);
                  print(cantidadController.text);
                  print(detallesController.text);
                  print(fechaAnticipoController.text);
                  print(liquidacionController.text);
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      const Color(0xff3e6777)), // Cambia el color de fondo
                  padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                    const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 30), // Ajusta el padding
                  ),
                  textStyle: MaterialStateProperty.all<TextStyle>(
                    const TextStyle(
                        fontSize: 20,
                        fontWeight:
                            FontWeight.bold), // Cambia el estilo del texto
                  ),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          10.0), // Ajusta la forma del botón
                      // Puedes ajustar más propiedades aquí, como bordes, sombras, etc.
                    ),
                  ),
                ),
                child: Text(
                  'Enviar',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
