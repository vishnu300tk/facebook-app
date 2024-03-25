// ignore: file_names
import 'package:flutter/material.dart';

class MarketPlace extends StatelessWidget {
  const MarketPlace({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Marketplace'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildHeader(),
            _buildCategories(),
            _buildProducts(),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Search for items',
          prefixIcon: const Icon(Icons.search),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
      ),
    );
  }

  Widget _buildCategories() {
    // ignore: sized_box_for_whitespace
    return Container(
      height: 100,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          _buildCategoryItem('Electronics', Icons.phone_android),
          _buildCategoryItem('Clothing', Icons.shopping_bag),
          _buildCategoryItem('Furniture', Icons.weekend),
          _buildCategoryItem('Books', Icons.menu_book),
          _buildCategoryItem('Toys', Icons.toys),
        ],
      ),
    );
  }

  Widget _buildCategoryItem(String title, IconData icon) {
    return Container(
      width: 100,
      margin: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 30),
          const SizedBox(height: 8.0),
          Text(title),
        ],
      ),
    );
  }

  Widget _buildProducts() {
    List<Product> products = [
      Product('LapTop', 'hp Laptop', 'https://th.bing.com/th/id/OIP.dvk7XnkysvY0LOCqeaYUpgHaEq?rs=1&pid=ImgDetMain'),
      Product('Smart Phone', 'Samsung smartphone', 'https://i5.walmartimages.com/asr/7fe14e55-dfad-4215-9251-be91dee24542.fb44fb0c013c276fa4010a75f0244660.jpeg'),
      Product('washing mechine', 'lloyed', 'https://th.bing.com/th/id/R.30a67d34b826b65ee00ad5aea267c1af?rik=BKkNcaW7vto5Fw&riu=http%3a%2f%2f2.bp.blogspot.com%2f-6mNe4Dazd3M%2fVPVlj575uzI%2fAAAAAAAAC8A%2fFgbBeA55gVE%2fs1600%2fWashing%2bMachine.jpg&ehk=vrduoW8NBrda06nz0WEkCnvFypdqgTARdSzZraQusqQ%3d&risl=&pid=ImgRaw&r=0'),
      Product('Tv', 'Soney ', 'https://www-konga-com-res.cloudinary.com/w_auto,f_auto,fl_lossy,dpr_auto,q_auto/media/catalog/product/W/R/4841_1663696847.jpg'),
      Product('Headphone', 'Description 4', 'https://i5.walmartimages.com/asr/f714b623-b4ce-44a0-915f-1b672d175190.a8a1c633709ecb5c196445d5f08a1141.jpeg'),
      Product('Watch', 'Rolex', 'https://th.bing.com/th/id/OIP.4IP81oI-OTNcteM1AU9iYgHaHa?rs=1&pid=ImgDetMain'),
    ];

    return Container(
      padding: const EdgeInsets.all(16.0),
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,
        ),
        itemCount: products.length,
        itemBuilder: (BuildContext context, int index) {
          return _buildProductItem(products[index]);
        },
      ),
    );
  }

  Widget _buildProductItem(Product product) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(product.imageUrl,height: 120,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(product.title, style: const TextStyle(fontWeight: FontWeight.bold)),
                const SizedBox(height: 4.0),
                Text(product.description),
                const SizedBox(height: 4.0),
                const Text('\$25'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Product {
  final String title;
  final String description;
  final String imageUrl;

  Product(this.title, this.description, this.imageUrl);
}