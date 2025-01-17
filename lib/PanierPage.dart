import 'package:flutter/material.dart';
import 'package:projet_vetements_miage/paiement.dart';
import 'package:projet_vetements_miage/product.dart';
import 'package:provider/provider.dart';

import 'home.dart';

class PanierPage extends StatelessWidget {
  const PanierPage({super.key});

  @override
  Widget build(BuildContext context) {
    final panier = Provider.of<Panier>(context);

   double montantTotal() {
  double total = 0;
  for (var article in panier.articles) {
    total += article.prix * article.quantiteChoisie; // Utiliser quantiteChoisie ici
  }
  return total;
}

    return Scaffold(
  appBar: AppBar(
    title: const Text(
      'Panier',
      style: TextStyle(color: Colors.black, fontSize: 23, fontWeight: FontWeight.bold),
    ),
    backgroundColor: Theme.of(context).scaffoldBackgroundColor,
    elevation: 0,
    leading: IconButton(
      icon: const Icon(
        Icons.arrow_back,
        color: Colors.black,
      ),
      onPressed: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const HomeScreen(),
          ),
        );
      },
    ),
  ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: panier.articles.length,
              itemBuilder: (context, index) {
                final robe = panier.articles[index];
                return ListTile(
                  leading: Image.asset(
                    robe.image,
                    width: 60,
                    height: 60,
                    fit: BoxFit.cover,
                  ),
                  title: Text(robe.nom),
                  subtitle: Text(
    'Taille: ${robe.tailleChoisie}, Quantité: ${robe.quantiteChoisie}, Prix: ${(robe.prix * robe.quantiteChoisie).toStringAsFixed(2)} €'),

                  trailing: IconButton(
                    icon: const Icon(Icons.delete),
                    color: Colors.black,
                    
                    onPressed: () => panier.supprimerArticle(robe),
                  ),
                );
              },
            ),
          ),


          Container(
            padding: const EdgeInsets.all(50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total: ${montantTotal().toStringAsFixed(2)} €',
                  style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blue),
                ),
               ElevatedButton(
  onPressed: () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const PaiementScreen(),
      ),
    );
  },
  style: ElevatedButton.styleFrom(
    foregroundColor: Colors.blue,
    backgroundColor: Colors.yellow,
  ),
  child: const Text('Payer'),
),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
