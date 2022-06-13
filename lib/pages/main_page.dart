import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    User? user = FirebaseAuth.instance.currentUser;
    if (user == null) {
      return Container(
        child: Text("User not found"),
      );
    }
    return Scaffold(
      appBar: AppBar(
        title: Text("BigBollo"),
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: _logout,
            tooltip: "Logout",
          )
        ],
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            // Navigate using declared route name
            // Navigate using simple push method
            Text(""),
            ElevatedButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HamburguesaSencilla()),
              ),
              child: Text(
                'Hamburguesa sencilla',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0, color: Colors.black),
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.red[300],
                //onPrimary: Colors.deepOrangeAccent,
                padding: EdgeInsets.all(10.0),
                minimumSize: Size(410.0, 60.0), //ancho y alto
              ),
            ),
            Text(""),
            ElevatedButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HamburguesaDoble()),
              ),
              child: Text(
                'Hamburguesa Doble',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0, color: Colors.black),
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.yellow[200],
                //onPrimary: Colors.deepOrangeAccent,
                padding: EdgeInsets.all(10.0),
                minimumSize: Size(410.0, 60.0), //ancho y alto
              ),
            ),
            Text(""),
            ElevatedButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HamburguesaVegetariana()),
              ),
              child: Text(
                'Hamburguesa Vegetariana',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0, color: Colors.black),
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.green[300],
                //onPrimary: Colors.deepOrangeAccent,
                padding: EdgeInsets.all(10.0),
                minimumSize: Size(410.0, 60.0), //ancho y alto
              ),
            ),
            Text(""),
            ElevatedButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HamburguesaChickenBBQ()),
              ),
              child: Text(
                'Hamburguesa chicken BBQ',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0, color: Colors.black),
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.amber[200],
                //onPrimary: Colors.deepOrangeAccent,
                padding: EdgeInsets.all(10.0),
                minimumSize: Size(410.0, 60.0), //ancho y alto
              ),
            ),
            Text(""),
            //después de aqui es donde los botones son relleno
            //////////////////////////////////////////////////////////////////////////////////////////
            ElevatedButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HamburguesaArrachera()),
              ),
              child: Text(
                'Hamburguesa de arrachera',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0, color: Colors.black),
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.red[300],
                //onPrimary: Colors.deepOrangeAccent,
                padding: EdgeInsets.all(10.0),
                minimumSize: Size(410.0, 60.0), //ancho y alto
              ),
            ),
            Text(""),
            ElevatedButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HamburguesaPastor()),
              ),
              child: Text(
                'Hamburguesa de pastor',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0, color: Colors.black),
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.yellow[200],
                //onPrimary: Colors.deepOrangeAccent,
                padding: EdgeInsets.all(10.0),
                minimumSize: Size(410.0, 60.0), //ancho y alto
              ),
            ),
            Text(""),
            ElevatedButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HamburguesaHawallana()),
              ),
              child: Text(
                'Hamburguesa Hawallana',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0, color: Colors.black),
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.green[300],
                //onPrimary: Colors.deepOrangeAccent,
                padding: EdgeInsets.all(10.0),
                minimumSize: Size(410.0, 60.0), //ancho y alto
              ),
            ),
            Text(""),
            ElevatedButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HamburguesaChoriquezo()),
              ),
              child: Text(
                'Hamburguesa de choriquezo',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0, color: Colors.black),
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.amber[200],
                //onPrimary: Colors.deepOrangeAccent,
                padding: EdgeInsets.all(10.0),
                minimumSize: Size(410.0, 60.0), //ancho y alto
              ),
            ),
            Text("\n Próximanmente hot dogs y papas...", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0, color: Colors.blue[600])),
          ],
        ),
      ),
    );
  }

  _logout() {
    FirebaseAuth.instance.signOut().then((result) {
      Navigator.of(context).pushNamedAndRemoveUntil("/login", (_) => false);
    });
  }
}

class HamburguesaSencilla extends StatelessWidget {
  //ya
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sencilla'),
      ),
      body: Column(
        children: [
          RichText(
            text: TextSpan(
              text: 'Hamburguesa Sencilla \n',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40.0, color: Colors.black),
              children: const <TextSpan>[
                TextSpan(text: 'Esta hamburguesa incluye: \n \n', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0, color: Colors.black)),
                TextSpan(text: '1.-Carne \n', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0, color: Colors.black)),
                TextSpan(text: '2.-Tocino \n', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0, color: Colors.black)),
                TextSpan(text: '3.-Jamón \n', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0, color: Colors.black)),
                TextSpan(text: '4.-Queso amarillo \n', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0, color: Colors.black)),
                TextSpan(text: '5.-Queso oaxaca \n', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0, color: Colors.black)),
                TextSpan(text: '6.-Jitomate \n', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0, color: Colors.black)),
                TextSpan(text: '7.-Chile \n', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0, color: Colors.black)),
                TextSpan(text: '8.-Mayonesa \n', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0, color: Colors.black)),
                TextSpan(text: '9.-Catsup y mostaza \n', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0, color: Colors.black)),
                TextSpan(text: 'Una hamburguesa normal, pero aún así no pierde el sabor original \n', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0, color: Colors.black)),
              ],
            ),
          ),
          /////////////////////////////////////////////////////////////////////////////////
          Container(child: Image.network('http://www.fiestastarted.com/comeleya/restaurante/platillo/1230.jpg', width: 150, height: 100, fit: BoxFit.cover))
        ],
      ),
      //height: 440,
    );
    //aqui agregar una img
  }
}

class HamburguesaDoble extends StatelessWidget {
  //ya
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Doble'),
      ),
      body: Column(
        children: [
          RichText(
            text: TextSpan(
              text: 'Hamburguesa Doble Carne \n \n',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40.0, color: Colors.black),
              children: const <TextSpan>[
                TextSpan(text: 'Esta hamburguesa incluye: \n', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0, color: Colors.black)),
                TextSpan(text: ' 1.- 2 carnes \n', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0, color: Colors.black)),
                TextSpan(text: ' 2.- 2 Jamones \n', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0, color: Colors.black)),
                TextSpan(text: ' 3.- 2 Tocinos \n', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0, color: Colors.black)),
                TextSpan(text: ' 4.- 2 Quesos amarillos \n', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0, color: Colors.black)),
                TextSpan(text: ' 5.-  Queso oaxaca\n', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0, color: Colors.black)),
                TextSpan(text: ' 6.- Verdura y aderezos \n \n', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0, color: Colors.black)),
                TextSpan(text: 'Hamburguesa doble carne para el publico que no le basta con una sola carne y siempre quiere más\n', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0, color: Colors.black)),
              ],
            ),
          ),
          /////////////////////////////////////////////////////////////////////////////////
          Container(child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRYMtWeWJ7blYHsGuuEiSSPRokMYFyINj3nrQ&usqp=CAU', width: 150, height: 100, fit: BoxFit.cover))
        ],
      ),
      //height: 440,
    );
    //aqui agregar una img
  }
}

class HamburguesaVegetariana extends StatelessWidget {
  //ya
  //ya
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Vegetariana'),
      ),
      body: Column(
        children: [
          RichText(
            text: TextSpan(
              text: 'Hamburguesa Vegetariana \n \n',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40.0, color: Colors.black),
              children: const <TextSpan>[
                TextSpan(text: 'Esta hamburguesa incluye: \n', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0, color: Colors.black)),
                TextSpan(text: ' 1.-Campiñones \n', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0, color: Colors.black)),
                TextSpan(text: ' 2.-Piña \n', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0, color: Colors.black)),
                TextSpan(text: ' 3.-90g de queso oaxaca \n', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0, color: Colors.black)),
                TextSpan(text: ' 4.-Queso amarillo \n', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0, color: Colors.black)),
                TextSpan(text: ' 5.-Aguacate \n', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0, color: Colors.black)),
                TextSpan(text: ' 6.-Verdura y aderezos \n \n', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0, color: Colors.black)),
                TextSpan(text: 'Hamburguesa especial para el publico vegetariano que quiere probar algo distinto y no solo carne\n', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0, color: Colors.black)),
              ],
            ),
          ),
          /////////////////////////////////////////////////////////////////////////////////
          Container(child: Image.network('https://www.wikichef.net/content/uploads/recipes/4ac521_hamburguesa-vegetariana-con-aguacate_w1000.jpg', width: 150, height: 100, fit: BoxFit.cover))
        ],
      ),
      //height: 440,
    );
    //aqui agregar una img
  }
}

class HamburguesaChickenBBQ extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ChickenBBQ'),
      ),
      body: Column(
        children: [
          RichText(
            text: TextSpan(
              text: 'Hamburguesa ChickenBBQ \n \n',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40.0, color: Colors.black),
              children: const <TextSpan>[
                TextSpan(text: 'Esta hamburguesa incluye: \n', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0, color: Colors.black)),
                TextSpan(text: ' 1.-Pollo \n', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0, color: Colors.black)),
                TextSpan(text: ' 2.-Aros de cebolla \n', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0, color: Colors.black)),
                TextSpan(text: ' 3.-Salsa BBQ \n', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0, color: Colors.black)),
                TextSpan(text: ' 4.-Aderezo de habanero \n', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0, color: Colors.black)),
                TextSpan(text: ' 5.-Salsa de habanero \n \n', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0, color: Colors.black)),
                TextSpan(text: 'Hamburguesa  de pollo con crujientes aros de cebolla bañados con salsa bbq, con aderezo de habanero y salsa de habanero \n', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0, color: Colors.black)),
              ],
            ),
          ),
          /////////////////////////////////////////////////////////////////////////////////
          Container(child: Image.network('https://cdn7.kiwilimon.com/recetaimagen/13820/640x426/6180.png.webp', width: 150, height: 100, fit: BoxFit.cover))
        ],
      ),
      //height: 440,
    );
  }
}

///hamburguesas de arrachera y el resto abajo //modificar img de las hamburguesas de abajo
///
class HamburguesaArrachera extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Arrachera'),
      ),
      body: Column(
        children: [
          RichText(
            text: TextSpan(
              text: 'Hamburguesa de Arrachera \n \n',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40.0, color: Colors.black),
              children: const <TextSpan>[
                TextSpan(text: 'Esta hamburguesa incluye: \n', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0, color: Colors.black)),
                TextSpan(text: '1.-Arrachera \n', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0, color: Colors.black)),
                TextSpan(text: '2.-Tocino \n', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0, color: Colors.black)),
                TextSpan(text: '3.-Jamón \n', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0, color: Colors.black)),
                TextSpan(text: '4.-Queso amarillo \n', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0, color: Colors.black)),
                TextSpan(text: '5.-Queso oaxaca \n', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0, color: Colors.black)),
                TextSpan(text: '6.-Chile \n', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0, color: Colors.black)),
                TextSpan(text: '7.-Mayonesa \n', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0, color: Colors.black)),
                TextSpan(text: '8.-Catsup y mostaza \n \n', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0, color: Colors.black)),
                TextSpan(text: 'Una hamburguesa de arrachera, para disfrutar de una carne asada \n', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0, color: Colors.black)),
              ],
            ),
          ),
          /////////////////////////////////////////////////////////////////////////////////
          Container(child: Image.network('data:image/jpeg;base64,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', width: 150, height: 100, fit: BoxFit.cover))
        ],
      ),
      //height: 440,
    );
  }
}

class HamburguesaPastor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pastor'),
      ),
      body: Column(
        children: [
          RichText(
            text: TextSpan(
              text: 'Hamburguesa de Pastor \n \n',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40.0, color: Colors.black),
              children: const <TextSpan>[
                TextSpan(text: 'Esta hamburguesa incluye: \n', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0, color: Colors.black)),
                TextSpan(text: '1.-Pastor \n', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0, color: Colors.black)),
                TextSpan(text: '2.-Cebolla \n', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0, color: Colors.black)),
                TextSpan(text: '3.-Cilantro \n', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0, color: Colors.black)),
                TextSpan(text: '4.-Guacamole \n', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0, color: Colors.black)),
                TextSpan(text: '5.-Cilantro \n', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0, color: Colors.black)),
                TextSpan(text: 'Una hamburguesa de Pastor, por si te quedaste con ganas de unos tacos de Pastor \n', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0, color: Colors.black)),
              ],
            ),
          ),
          /////////////////////////////////////////////////////////////////////////////////
          Container(child: Image.network('https://assets.unileversolutions.com/recipes-v2/153491.jpg', width: 150, height: 150, fit: BoxFit.cover))
        ],
      ),
      //height: 440,
    );
  }
}

class HamburguesaHawallana extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hawallana'),
      ),
      body: Column(
        children: [
          RichText(
            text: TextSpan(
              text: 'Hamburguesa Hawallana \n \n',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40.0, color: Colors.black),
              children: const <TextSpan>[
                TextSpan(text: 'Esta hamburguesa incluye: \n', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0, color: Colors.black)),
                TextSpan(text: '1.-Carne \n', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0, color: Colors.black)),
                TextSpan(text: '2.-Queso blanco \n', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0, color: Colors.black)),
                TextSpan(text: '3.-Lechuca \n', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0, color: Colors.black)),
                TextSpan(text: '4.-Piña \n', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0, color: Colors.black)),
                TextSpan(text: 'Una hamburguesa Hawallana, por si eres fan de la piña \n', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0, color: Colors.black)),
              ],
            ),
          ),
          /////////////////////////////////////////////////////////////////////////////////
          Container(child: Image.network('https://images-gmi-pmc.edge-generalmills.com/99a6011f-9cfc-4dc1-8c9e-1c7b008c6c90.jpg', width: 150, height: 150, fit: BoxFit.cover))
        ],
      ),
      //height: 440,
    );
  }
}

class HamburguesaChoriquezo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Choriquezo'),
      ),
      body: Column(
        children: [
          RichText(
            text: TextSpan(
              text: 'Hamburguesa de Choriquezo \n \n',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40.0, color: Colors.black),
              children: const <TextSpan>[
                TextSpan(text: 'Esta hamburguesa incluye: \n', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0, color: Colors.black)),
                TextSpan(text: '1.-Carne \n', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0, color: Colors.black)),
                TextSpan(text: '2.-Queso blanco \n', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0, color: Colors.black)),
                TextSpan(text: '3.-chorizo \n', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0, color: Colors.black)),
                TextSpan(text: '4.-Queso amarillo \n', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0, color: Colors.black)),
                TextSpan(text: 'Una hamburguesa de choriqueso, por si eres del choriqueso \n', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0, color: Colors.black)),
              ],
            ),
          ),
          /////////////////////////////////////////////////////////////////////////////////
          Container(child: Image.network('data:image/jpeg;base64,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', width: 150, height: 150, fit: BoxFit.cover))
        ],
      ),
      //height: 440,
    );
  }
}
