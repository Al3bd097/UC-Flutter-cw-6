class Building {
  String name;
  String image;

  Building({
    required this.name,
    required this.image,
  });

  static List<Building> movies = [
    Building(
        name: "Kuwait Towers",
        image:
            "https://user-images.githubusercontent.com/24327781/188260105-52be6a2e-a6d3-4ceb-86c0-ddc83e0aa5b6.jpeg"),
    Building(
      name: "Burj Al-Tahreer",
      image:
          "https://user-images.githubusercontent.com/24327781/188260123-28de85b4-d272-4ebb-b2ad-22a9582079bf.jpeg",
    ),
    Building(
      name: "Al-Masjed Al-Kabeer",
      image:
          "https://user-images.githubusercontent.com/24327781/188260137-021d865a-625e-4941-ad75-6427c690e0cf.jpeg",
    )
  ];
}
