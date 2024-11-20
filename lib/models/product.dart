class Product {
  final String name;
  final int price;
  final String imageUrl;
  final int stock;
  final String description;

  Product(
      {required this.name,
      required this.price,
      required this.imageUrl,
      required this.stock,
      required this.description});
}

final List<Product> products = [
  Product(
    name: "Sepatu Sneakers - ellow/Egret",
    price: 499000,
    imageUrl: "assets/images/shoes-2.png",
    stock: 10,
    description:
        "Sneakers shoes berbahan canvas yang didesain trendi dengan detail eyelets, neat stitching, dan outsole yang nyaman saat dipakai.",
  ),
  Product(
    name: "Chuck Taylor All Star High Street",
    price: 899000,
    imageUrl: "assets/images/shoes-3.png",
    stock: 10,
    description:
        "Warna musiman memberi sepatu Chuck Taylor All Star High Street ini pembaruan segar musim ini. Dihiasi fitur-fitur sporty, termasuk kerah dan lidah sepatu empuk, sockliner OrthoLite nyaman.",
  ),
  Product(
    name: "Chuck Taylor 70s Hi Black White",
    price: 191000,
    imageUrl: "assets/images/shoes-4.png",
    stock: 10,
    description:
        "Sepatu kami benar-benar REAL PICT menggunakan kamera handphone sehingga barang yang dikirim akan sesuai dengan foto dan deskripsi, Garansi 100% return / refound jika barang yang dikirim tidak sesuai dengan foto dan deskripsi.",
  ),
  Product(
    name: "Chuck Taylor 70s Hi Lylac Taro",
    price: 599999,
    imageUrl: "assets/images/shoes-5.png",
    stock: 10,
    description:
        "SEPATU CONVERSE ALL STAR CHUCK TAYLOR 70s HIGH LYLAC TARO SIZE: 36/37/38/39/40.",
  ),
  Product(
    name: "Converse Chuck Taylor All Star Flux Ultra",
    price: 630000,
    imageUrl: "assets/images/shoes-6.png",
    stock: 10,
    description:
        "Colorway : White Article : (A03461C) Brand New in Box (BNIB) / Tag (BNWT).",
  ),
];
