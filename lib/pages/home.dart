import 'package:flutter/material.dart';
import 'package:project/auth/login.dart';

class homePages extends StatefulWidget {
  const homePages({super.key});

  @override
  State<homePages> createState() => _homeState();
}

class _homeState extends State<homePages> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    Screen1(),
    Screen2(),
    Screen3(),
  ];

  @override
  void initState() {
    super.initState();
    // Implement some initialization operations here.
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Inicio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Búsqueda',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Perfil',
          ),
        ],
      ),
    );
  }
}

class Screen1 extends StatelessWidget {
  final List<Product> products = [
    Product(name: 'Producto 1', price: '\$10', image: 'images/product1.jpg'),
    Product(name: 'Producto 2', price: '15.00', image: 'images/product1.jpg'),
    Product(name: 'Producto 3', price: '12.50', image: 'images/product1.jpg'),
    Product(name: 'Producto 4', price: '120.50', image: 'images/product1.jpg'),
    Product(name: 'Producto 5', price: '1.50', image: 'images/product1.jpg'),
    Product(name: 'Producto 6', price: '13.50', image: 'images/product1.jpg'),
    Product(name: 'Producto 7', price: '12.50', image: 'images/product1.jpg'),
    Product(name: 'Producto 8', price: '52.50', image: 'images/product1.jpg'),
    Product(name: 'Producto 9', price: '02.50', image: 'images/product1.jpg'),
    // Agrega las demás entradas de productos con sus respectivas imágenes
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: <Color>[Color(0xffaF0050), Color(0x00ef5350)],
              begin: Alignment.topCenter,
            ),
          ),
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 50.5),
            children: [
              Text(
                'Tarea 6 Jinson Medina',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20.0),
              GridView.count(
                shrinkWrap: true,
                crossAxisCount: 3,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 10.0,
                children: products.map((product) {
                  return Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          product.image,
                          width: 80.0,
                          height: 80.0,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(height: 5.0),
                        Text(
                          product.name,
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 5.0),
                        Text(
                          '\$${product.price}',
                          style: TextStyle(
                            fontSize: 14.0,
                          ),
                        ),
                        SizedBox(height: 10.0),
                        ElevatedButton(
                          onPressed: () {
                            // Lógica para el botón de compra
                          },
                          child: Text('Comprar'),
                        ),
                      ],
                    ),
                  );
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Búsqueda'),
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: <Color>[
                Color.fromARGB(255, 0, 255, 225),
                Color.fromARGB(0, 180, 177, 3)
              ],
              begin: Alignment.bottomRight,
            ),
          ),
          padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 200.5),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  icon: Icon(Icons.search),
                  suffixIcon: Icon(Icons.clear),
                  hintText: 'Buscar',
                  labelText: 'Búsqueda',
                  helperText: 'Ingrese su consulta',
                ),
                autofocus: true,
                keyboardType: TextInputType.text,
                obscureText: false,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Screen3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage('images/profile.jpg'),
            ),
            SizedBox(height: 20.0),
            Text(
              'Nombre: Jinson',
              style: TextStyle(fontSize: 20.0),
            ),
            Text(
              'Apellidos: Medina',
              style: TextStyle(fontSize: 20.0),
            ),
            Text(
              'CI: 1234567',
              style: TextStyle(fontSize: 20.0),
            ),
            Text(
              'Correo: jinson@medina.com',
              style: TextStyle(fontSize: 20.0),
            ),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                RoundedButtonWithIcon(
                  icon: Icons.edit,
                  label: 'Editar',
                  onPressed: () {},
                ),
                RoundedButtonWithIcon(
                  icon: Icons.lock,
                  label: 'Settings',
                  onPressed: () {},
                ),
                RoundedButtonWithIcon(
                  icon: Icons.join_left,
                  label: 'Salir',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => login()),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class RoundedButtonWithIcon extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onPressed;

  const RoundedButtonWithIcon({
    required this.icon,
    required this.label,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
      ),
      icon: Icon(icon),
      label: Text(label),
    );
  }
}

class Product {
  final String name;
  final String price;
  final String image;

  Product({required this.name, required this.price, required this.image});
}
