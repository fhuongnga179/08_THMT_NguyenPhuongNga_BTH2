import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Lập trình ứng dụng đa nền tảng'),
            SizedBox(height: 20), // Để tạo khoảng cách giữa Text và Image
            Image.asset(  
              'assets/flutter-1.jpg', // Đường dẫn đến hình ảnh trong thư mục assets
              width: 200, // Độ rộng của hình ảnh (tuỳ chọn)
              height: 200, // Độ cao của hình ảnh (tuỳ chọn)
              // Nếu bạn muốn thay đổi kích thước hình ảnh, bạn có thể sử dụng width và height
              // Ví dụ: width: 150, height: 150,
            ),
          ],
        ),
      ),
    );
  }
}
