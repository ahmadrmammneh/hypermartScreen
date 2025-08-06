import 'package:flutter/material.dart';
import 'package:myapp/categorewidget.dart';
import 'package:myapp/discountwidget.dart';

class Screen extends StatefulWidget {
  const Screen({super.key});

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  final List<Map<String, String>> discounting = [
    {"photo": "assets/jpg/istockphoto-693280644-2048x2048.jpg"},
    {"photo": "assets/jpg/istockphoto-1354745158-2048x2048.jpg"},
    {"photo": "assets/jpg/istockphoto-155443388-2048x2048.jpg"},
  ];
  final List<Map<String, String>> categor = [
    {"image": "assets/png/Screenshot 2025-08-06 160737.png"},
    {"image": "assets/png/Screenshot 2025-08-06 160759.png"},
    {"image": "assets/png/Screenshot 2025-08-06 160749.png"},
    {"image": "assets/png/Screenshot 2025-08-06 160737.png"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              SizedBox(height: 20),
              Row(
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Hyper",
                          style: TextStyle(color: Colors.amber, fontSize: 20),
                        ),
                        TextSpan(
                          text: "Mart",
                          style: TextStyle(
                            color: Color.fromARGB(255, 18, 165, 151),
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Text("Eng", style: TextStyle(color: Colors.black)),
                  Icon(Icons.arrow_drop_down_rounded),
                  SizedBox(width: 4),
                  CircleAvatar(
                    radius: 14,
                    backgroundColor: const Color.fromARGB(255, 225, 222, 222),
                    child: Icon(
                      Icons.notifications,
                      color: Colors.redAccent,
                      size: 20,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 18),
              Row(
                children: [
                  Padding(padding: EdgeInsetsGeometry.symmetric(horizontal: 4)),
                  CircleAvatar(
                    radius: 24,
                    backgroundColor: Color.fromARGB(255, 18, 165, 151),
                    child: Icon(
                      Icons.location_on_outlined,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(width: 6),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Bengaluru",
                        style: TextStyle(color: Colors.black, fontSize: 12),
                      ),
                      SizedBox(height: 2),
                      Text(
                        "BTM Layot, 500628",
                        style: TextStyle(color: Colors.black, fontSize: 14),
                      ),
                    ],
                  ),
                  Spacer(),
                  Icon(Icons.arrow_forward_ios),
                ],
              ),
              SizedBox(height: 18),
              Container(
                padding: EdgeInsets.all(2),

                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Search Anything...",
                    filled: true,
                    fillColor: Color.fromARGB(26, 128, 128, 128),

                    contentPadding: EdgeInsets.all(18),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(14),
                      borderSide: BorderSide(
                        color: Color.fromARGB(26, 128, 128, 128),
                        width: 2,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(14),
                      borderSide: BorderSide(
                        color: Color.fromARGB(
                          26,
                          128,
                          128,
                          128,
                        ), // لون الإطار عند عدم التركيز
                        width: 2,
                      ),
                    ),
                    prefixIcon: Padding(
                      padding: EdgeInsets.only(
                        left: 16,
                      ), // أو القيمة التي تريدها
                      child: Icon(
                        Icons.search,
                        size: 30, // حجم مناسب داخل الـ padding
                        color: Color.fromARGB(255, 195, 197, 199),
                      ),
                    ),
                    suffixIcon: Padding(
                      padding: EdgeInsetsGeometry.only(right: 16),
                      child: Icon(
                        Icons.mic_none_outlined,
                        color: Color.fromARGB(255, 18, 165, 151),
                        size: 30,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16),
              SizedBox(
                height: 200, // ارتفاع ثابت للقائمة الأفقية
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: discounting.length,
                  itemBuilder: (context, index) {
                    final discount = discounting[index];
                    return Padding(
                      padding: const EdgeInsets.only(
                        right: 12,
                      ), // مسافة بين الصور
                      child: DiscountWidget(photo: discount['photo']!),
                    );
                  },
                ),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Text(
                    "Categories",
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  ),
                  Spacer(),
                  Icon(Icons.arrow_forward_ios),
                ],
              ),
              SizedBox(height: 10),
              SizedBox(
                height: 100,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: categor.length,
                  itemBuilder: (context, index) {
                    final cat = categor[index];
                    return Padding(
                      padding: EdgeInsets.only(right: 16),
                      child: CategoreWidget(image: cat['image']!),
                    );
                  },
                ),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Text(
                    "Previous Order",
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  ),
                  Spacer(),
                  Icon(Icons.arrow_forward_ios),
                ],
              ),
              SizedBox(height: 4),
              Stack(
                children: [
                  Container(
                    width: MediaQuery.sizeOf(context).width,
                    padding: EdgeInsets.all(16),
                    margin: EdgeInsets.only(top: 8),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12, // لون الظل رمادي خفيف
                          blurRadius: 10, // مدى التمويه للظل
                          spreadRadius: 2, // مدى انتشار الظل
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Delivered",
                          style: TextStyle(
                            color: Color(0xFF12A597),
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 2),
                        Text(
                          "On Wed, 27 Jul 2022",
                          style: TextStyle(color: Colors.black, fontSize: 14),
                        ),
                        SizedBox(height: 12),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.asset(
                            "assets/png/12bde0e0-7005-4609-9a13-02404b9323cd.png",
                            height: 120,
                            width: MediaQuery.sizeOf(context).width,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    right: 0,
                    top: 8,
                    bottom: 0,
                    child: Container(
                      width: 50,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 247, 104, 104),
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(16),
                          // زوايا دائرية من الأعلى
                          bottomRight: Radius.circular(16), // وزوايا من الأسفل
                        ),
                      ),
                      child: Center(
                        child: RotatedBox(
                          quarterTurns: 3, // تدوير النص 270 درجة
                          child: Text(
                            "Get a Flat 10% Off ",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
