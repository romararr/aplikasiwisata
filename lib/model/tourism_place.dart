class TourismPlace {
  String name;
  String location;
  String description;
  String openDays;
  String openTime;
  String ticketPrice;
  String imageAsset;
  List<String> imageUrls;

  TourismPlace({
    required this.name,
    required this.location,
    required this.description,
    required this.openDays,
    required this.openTime,
    required this.ticketPrice,
    required this.imageAsset,
    required this.imageUrls,
  });
}

var tourismPlaceList = [
  TourismPlace(
    name: 'Monumen Nasional',
    location: 'DKI Jakarta',
    description:
        'Monumen Nasional atau yang disingkat dengan Monas atau Tugu Monas adalah monumen peringatan setinggi 132 meter yang didirikan untuk mengenang perlawanan dan perjuangan rakyat Indonesia untuk merebut kemerdekaan dari pemerintahan kolonial Hindia Belanda.',
    openDays: 'Open Everyday',
    openTime: '09:00 - 20:00',
    ticketPrice: 'Rp 25000',
    imageAsset: 'images/gbr.jpg',
    imageUrls: [
      'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e0/Jakarta_bajaj.jpg/1200px-Jakarta_bajaj.jpg',
      'https://akcdn.detik.net.id/community/media/visual/2019/06/20/c46f7bcd-7b7e-4aa3-8d31-15cbec9e24b5_169.jpeg?w=620',
      'http://assets.kompasiana.com/items/album/2018/12/16/4f097e17-698b-4214-85e3-13442133a64c-5c15b872677ffb5328248103.jpeg?t=o&v=770',
    ],
  ),
  TourismPlace(
    name: 'Batu Night Spectacular',
    location: 'Kota Batu',
    description:
        'Batu Night Spectacular atau sering disebut BNS memberi Anda pengalaman wisata malam nan gemerlap di Malang. Berlokasi di Jalan Hayam Wuruk No. 1, Oro-Oro Ombo, Batu, destinasi wisata yang tergabung dalam Jatim Park Group ini menawarkan konsep tempat rekreasi terpadu. Berbelanja, berolahraga, bermain, dan menikmati aneka hiburan bisa Anda lakukan secara bersamaan di sini. Saat tiba pertama kali di BNS, Anda akan teringat pada suasana pasar malam. BNS memang terinspirasi dari kemeriahan pasar malam lengkap dengan lampu warna-warni dari berbagai wahana permainan. Namun, nuansa modern dan kekinian memoles tempat ini menjadi lebih atraktif. Cocok sebagai destinasi wisata malam pilihan untuk semua usia.',
    openDays: 'Open Everyday',
    openTime: '09:00 - 20:00',
    ticketPrice: 'Rp 85000',
    imageAsset: 'images/bns.png',
    imageUrls: [
      'https://asset.kompas.com/crops/M7556zw2ltLdZYCkhP5ror7XJ5I=/0x0:750x500/490x326/data/photo/2022/01/15/61e2359fd1bf9.jpeg',
      'https://cdn.nativeindonesia.com/foto/batu-night-spectacular/salah-satu-wahana-adrenalin-bns.jpg',
      'https://static.republika.co.id/uploads/images/inpicture_slide/batu-night-spektakuler-bns-salah-satu-wisata-hiburan-malam-_171013093714-723.jpg',
    ],
  ),
  TourismPlace(
    name: 'Jatim Park 3',
    location: 'Kota Batu',
    description:
        'Taman hiburan populer dengan atraksi dinosaurus, museum lilin, kedai camilan & pameran teknologi.',
    openDays: 'Open Everyday',
    openTime: '09:00 - 20:00',
    ticketPrice: 'Rp 120000',
    imageAsset: 'images/jtp3.jpg',
    imageUrls: [
      'https://asset.kompas.com/crops/9NAb43-KKKJPx9fsLShXsspSrmI=/0x0:739x493/750x500/data/photo/2020/03/19/5e739e55b8973.jpg',
      'https://s2.bukalapak.com/bukalapak-kontenz-production/content_attachments/51502/w-740/jt_3.jpg',
      'https://foto.wartaekonomi.co.id/files/arsip_foto_2019_04_20/travel_070033_big.webp',
    ],
  )
];
