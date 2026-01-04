import 'package:flutter/material.dart';

	void main() {
    runApp(const monApp());
	}

  class monApp extends StatelessWidget {
  const monApp({super.key});

  @override
  // ignore: prefer_const_constructors
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Magazine', home:  pageAccueil());
  }
}

class  pageAccueil extends StatelessWidget {
  const  pageAccueil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      backgroundColor: Color.fromRGBO(218, 6, 122, 1),
      title: const Text("Magazine Infos"),
      centerTitle: true,
  // Icône à gauche
      leading: IconButton(
        icon: Icon(Icons.menu),
        onPressed: () {
          // Action bouton menu
        },
  ),
  // Icônes à droite
      actions: [
        IconButton(
          icon: Icon(Icons.search),
          onPressed: () {
            // Action search
          },
        ),
        
  ],
),
       
    body: const Center(
          child: Image(
        image: AssetImage('assets/images/dart.jpg'),
      )
          ),
      floatingActionButton: FloatingActionButton(
         onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Tu as cliqué dessus')),
    );
  },
        child: const Text('Click'),
        backgroundColor: Color.fromRGBO(218, 6, 122, 1),
      ),
    );
  }
}