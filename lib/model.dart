class Robes {
  String image;
  String nom;
  num prix;
  String description;
  List<String> images;

  Robes(
    this.image,
    this.nom,
    this.prix,
    this.description,
    this.images,
  );

  static List<Robes> robes() {
    return [
      Robes(
        'assets/images/image-01.png',
        'Robe Empire Rosa',
        180,
        "Une robe longue en mousseline de soie bleu clair, avec une encolure en V et des manches courtes évasées.",
        [
          'assets/images/image-01.png',
          'assets/images/image-01.png',
          'assets/images/image-01.png',
        ],
      ),
      Robes(
        'assets/images/image-02.png',
        'Robe fourreau Linda',
        170,
        "Une robe midi en dentelle noire, avec un décolleté plongeant en forme de cœur et des manches longues en dentelle transparente.",
        [
          'assets/images/image-02.png',
          'assets/images/image-02.png',
          'assets/images/image-02.png',
        ],
      ),
       Robes(
        'assets/images/image-03.png',
        'Robe sirène da Squaza',
        180,
        "Une robe courte sans bretelles en satin rouge vif, avec une jupe plissée et une ceinture en strass.Une robe à fleurs en coton rouge, avec un décolleté en V plongeant et des bretelles spaghetti croisées dans le dos.",
        [
          'assets/images/image-03.png',
          'assets/images/image-03.png',
          'assets/images/image-03.png',
        ],
      ),
       Robes(
        'assets/images/image-04.png',
        'Robe portefeuille di Monte',
        190,
        "Une robe longue en jersey noir, avec des découpes sur les côtés de la taille et des bretelles fines croisées dans le dos.Une robe courte à col roulé en maille grise, avec des manches longues et une jupe trapèze.",
        [
          'assets/images/image-04.png',
          'assets/images/image-04.png',
          'assets/images/image-04.png',
        ],
      ),
       Robes(
        'assets/images/image-05.png',
        'Robe patineuse de la côte',
        180,
        "Une robe chemise en denim bleu clair, avec des poches sur la poitrine et une ceinture à nouer à la taille.Une robe à volants en mousseline de soie rose pastel, avec des manches évasées et une ceinture à la taille.",
        [
          'assets/images/image-05.png',
          'assets/images/image-05.png',
          'assets/images/image-05.png',
        ],
      ),
       Robes(
        'assets/images/image-06.png',
        'Robe bustier Sacnchez',
        210,
        "Une robe maxi en coton blanc avec des broderies florales colorées, une encolure en V et des manches courtes ballon.Une robe fourreau en cuir noir, avec une encolure haute et des manches longues en dentelle.",
        [
          'assets/images/image-06.png',
          'assets/images/image-06.png',
          'assets/images/image-06.png',
        ],
      ),
       Robes(
        'assets/images/image-07.png',
        'Robe chemise Kassin',
        210,
        "Une robe fourreau en cuir blanc, avec une encolure haute et des manches longues en dentelle.",
        [
          'assets/images/image-07.png',
          'assets/images/image-07.png',
          'assets/images/image-07.png',
        ],
      ),
       Robes(
        'assets/images/image-08.png',
        'Robe chemise Croite',
        230,
        "Une robe fourreau en cuir blanc cassé porté par Rosa Linda , la princesse des milles et une nuit, avec une encolure haute et des manches longues en dentelle.",
        [
          'assets/images/image-08.png',
          'assets/images/image-08.png',
          'assets/images/image-08.png',
        ],
      ),
    ];
  }
}