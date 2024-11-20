import 'package:flutter/material.dart';
import 'package:simple_app_login_dashboard/models/product.dart';

class AddProductScreen extends StatefulWidget {
  const AddProductScreen({super.key});

  @override
  State<AddProductScreen> createState() => _AddProductScreenState();
}

class _AddProductScreenState extends State<AddProductScreen> {
  late TextEditingController _nameController;
  late TextEditingController _priceController;
  late TextEditingController _stockController;
  late TextEditingController _descriptionController;

  late GlobalKey<FormState> _formKey;

  @override
  void initState() {
    _nameController = TextEditingController();
    _priceController = TextEditingController();
    _stockController = TextEditingController();
    _descriptionController = TextEditingController();
    _formKey = GlobalKey<FormState>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tambah Produk"),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 24,
              ),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Center(
                      child: FlutterLogo(
                        size: 80,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "Tambah Produk",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: _nameController,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return ("Nama produk tidak boleh kosong");
                        } else {
                          return null;
                        }
                      },
                      decoration: const InputDecoration(
                        labelText: "Nama Produk",
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: _priceController,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return ("Harga produk tidak boleh kosong");
                        } else if (value == "0") {
                          return ("Harga produk tidak boleh 0");
                        } else {
                          return null;
                        }
                      },
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        labelText: "Harga Produk",
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: _stockController,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return ("Stok produk tidak boleh kosong");
                        } else {
                          return null;
                        }
                      },
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        labelText: "Stok Produk",
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: _descriptionController,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return ("Deskripsi produk tidak boleh kosong");
                        } else {
                          return null;
                        }
                      },
                      decoration: const InputDecoration(
                        labelText: "Deskripsi Produk",
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    FilledButton.icon(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          final product = Product(
                            name: _nameController.text,
                            price: int.parse(_priceController.text),
                            stock: int.parse(_stockController.text),
                            description: _descriptionController.text,
                            imageUrl: "assets/images/shoes-1.png",
                          );
                          products.add(product);

                          Navigator.popUntil(context, (route) {
                            return route.settings.name == '/dashboard';
                          });
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text("Terdapat kesalahan"),
                            ),
                          );
                        }
                      },
                      label: const Text("Tambah Produk"),
                      icon: const Icon(Icons.add),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
