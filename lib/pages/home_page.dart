import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';// ใช้ CarouselSlider จากแพ็กเกจนี้


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Application Mobile'),
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
            // ใส่การกระทำที่ต้องการ เช่น เปิด Drawer หรือ Menu
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              // การกระทำเมื่อคลิกที่ปุ่ม Search
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Carousel Slider สำหรับรูปภาพ
            CarouselSlider(
              options: CarouselOptions(
                height: 200.0,
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 3),
                enlargeCenterPage: true,
                viewportFraction: 0.9,
                enableInfiniteScroll: true,
                pauseAutoPlayOnTouch: true,
              ),
              items: [
                'https://via.placeholder.com/1500x500',
                'https://via.placeholder.com/1500x500/0000FF/808080',
                'https://via.placeholder.com/1500x500/FF0000/FFFFFF'
              ].map((imageUrl) {
                return Builder(
                  builder: (BuildContext context) {
                    return Image.network(
                      imageUrl,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    );
                  },
                );
              }).toList(),
            ),
            const SizedBox(height: 20),

            // หัวข้อรายการสินค้า
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Our Products',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 20),

            // รายการสินค้าใน GridView
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, // จำนวนคอลัมน์
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 0.75, // ความสูงมากกว่าความกว้าง
              ),
              itemCount: 6, // เปลี่ยนเป็นจำนวนสินค้าจริงที่มี
              itemBuilder: (context, index) {
                return Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      // รูปภาพสินค้า
                      Image.network(
                        'https://via.placeholder.com/300',
                        height: 120,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(height: 10),
                      // ชื่อสินค้า
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Product ${index + 1}',
                          style: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ),
                      // คำบรรยายสินค้า
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                          'This is a description of product ${index + 1}.',
                          textAlign: TextAlign.center,
                        ),
                      ),
                      // ปุ่ม "View Details"
                      TextButton(
                        onPressed: () {
                          // เพิ่มการกระทำเมื่อคลิกที่ปุ่ม "View Details"
                          // ตัวอย่างการนำทางไปยังหน้ารายละเอียด
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const ProductDetailPage()),
                          );
                        },
                        child: const Text('View Details'),
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

// ตัวอย่างหน้ารายละเอียดสินค้า
class ProductDetailPage extends StatelessWidget {
  const ProductDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Product Detail')),
      body: Center(
        child: Column(
          children: [
            Image.network('https://via.placeholder.com/500'),
            const SizedBox(height: 20),
            const Text('Product Details Here'),
          ],
        ),
      ),
    );
  }
}
