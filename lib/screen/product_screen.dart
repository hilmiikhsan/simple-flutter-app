import 'package:flutter/material.dart';
import 'package:simple_app_login_dashboard/models/product.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, "/add-product");
        },
        child: const Icon(Icons.add),
      ),
      appBar: AppBar(
        title: const Text("Daftar Produk"),
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
        ),
        child: RefreshIndicator(
          onRefresh: () {
            return Future.delayed(const Duration(seconds: 1), () {
              setState(() {});
            });
          },
          child: GridView.builder(
            itemCount: products.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisSpacing: 20,
              crossAxisCount: 2,
              childAspectRatio: 0.7,
              mainAxisSpacing: 10,
            ),
            itemBuilder: (context, index) {
              final product = products[index];
              return InkWell(
                onTap: () {
                  showModalBottomSheet(
                    enableDrag: true,
                    isScrollControlled: true,
                    showDragHandle: true,
                    context: context,
                    builder: (context) {
                      return Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          // product detail
                          ListTile(
                            leading: const Icon(Icons.inventory),
                            title: const Text("Nama Produk"),
                            subtitle: Text(product.name),
                          ),
                          ListTile(
                            leading: const Icon(Icons.money),
                            title: const Text("Harga Produk"),
                            subtitle: Text("Rp. ${product.price}"),
                          ),
                          // stock
                          ListTile(
                            leading: const Icon(Icons.inventory),
                            title: const Text("Stok Produk"),
                            subtitle: Text("${product.stock}"),
                          ),
                          ListTile(
                            leading: const Icon(Icons.image),
                            title: const Text("Gambar Produk"),
                            subtitle: Image.asset(
                              product.imageUrl,
                              fit: BoxFit.cover,
                            ),
                          ),
                          // description
                          ListTile(
                            leading: const Icon(Icons.description),
                            title: const Text("Deskripsi Produk"),
                            subtitle: Text(product.description),
                          ),
                          // button
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: const Text("Tutup"),
                              ),
                            ],
                          )
                        ],
                      );
                    },
                  );
                },
                child: Card(
                  child: Column(
                    children: [
                      Expanded(
                        child: Image.asset(
                          product.imageUrl,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          product.name,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Rp. ${product.price}",
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
