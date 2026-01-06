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
        title: 'Magazine',
        home: pageAccueil());
  }
}

class pageAccueil extends StatelessWidget {
  const pageAccueil({super.key});

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
      body: const Column(
        children: [
          Image(
            image: AssetImage('assets/images/dart.jpg'),
            width: double.infinity,
            height: 200, // par exemple
            fit: BoxFit.cover,
          ),
          partieTitre(
            titreNiveau1: 'Bienvenue sur Magazine Infos',
            titreNiveau2:
                'Votre magazine numérique, votre source d\'inspiration',
          ),
          partieTexte(),
          partieIcone(),
          partieRubrique(
              assetImage1: 'assets/images/equipe.jpg',
              assetImage2: 'assets/images/archives.jpg',
          ),
        ],
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

class partieTitre extends StatelessWidget {
  final String titreNiveau1;
  final String titreNiveau2;

  const partieTitre({
    Key? key,
    required this.titreNiveau1,
    required this.titreNiveau2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            titreNiveau1,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            titreNiveau2,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Colors.black87,
            ),
          ),
        ],
      ),
    );
  }
}

class partieTexte extends StatelessWidget {
  const partieTexte({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: const Text(
        "Magazine Infos est votre nouveau magazine numérique. "
        "Notre plateforme vous propose chaque semaine des articles inspirants, "
        "des interviews exclusives, des actualités variées et tout ce qu’il faut pour rester informé et motivé. "
        "Rejoignez-nous et découvrez une nouvelle façon de lire et d’apprendre !",
        style: TextStyle(
          fontSize: 16,
          color: Colors.black87,
        ),
        textAlign: TextAlign.justify,
      ),
    );
  }
}

class partieIcone extends StatelessWidget {
  const partieIcone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            child: Column(
              children:const [
                Icon(Icons.phone, size: 32, color: Colors.pink),
                SizedBox(height: 8),
                Text(
                  "TEL",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.5,
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              children: const [
                Icon(Icons.email, size: 32, color: Colors.pink),
                SizedBox(height: 8),
                Text(
                  "MAIL",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.5,
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              children: const [
                Icon(Icons.share, size: 32, color: Colors.pink),
                SizedBox(height: 8),
                Text(
                  "PARTAGE",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.5,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class partieRubrique extends StatelessWidget {
  final String assetImage1;
  final String assetImage2;

  const partieRubrique({
    Key? key,
    required this.assetImage1,
    required this.assetImage2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 90), // Espacement horizontal
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween, 
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16), 
            child: Image.asset(
              assetImage1,
              width: 110,
              height: 100,
              fit: BoxFit.cover,
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.asset(
              assetImage2,
              width: 110,
              height: 100,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
