import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Main extends StatefulWidget {
  const Main({super.key});

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  int _value = 1;
  void _onSubmit() {
    ScaffoldMessenger.of(context).clearMaterialBanners();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text("Амжилттай хадгаллаа"),
        action: SnackBarAction(
            label: "Хаах",
            onPressed: () =>
                ScaffoldMessenger.of(context).clearMaterialBanners()),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Мобайл технологи лаборатори 1-2 хэсэг B201900102",
          style: TextStyle(fontSize: 15),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Text("Дуртай амьтанаа сонгоно уу."),
          ),
          Column(
            children: [
              Radio(
                  value: 1,
                  groupValue: _value,
                  onChanged: (value) {
                    setState(() {
                      _value = value!;
                    });
                  }),
              Text(
                "Туулай",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 5,
              ),
              Image.asset(
                'images/rabbit.jpg',
                scale: 1.5,
                height: 75,
              ),
              SizedBox(height: 10),
              Radio(
                value: 2,
                groupValue: _value,
                onChanged: (value) {
                  setState(() {
                    _value = value!;
                  });
                },
              ),
              Text(
                "Үнэг",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 5,
              ),
              Image.asset(
                'images/fox.jpg',
                scale: 1.5,
                height: 80,
              ),
              SizedBox(
                height: 10,
              ),
              Radio(
                value: 3,
                groupValue: _value,
                onChanged: (value) {
                  setState(() {
                    _value = value!;
                  });
                },
              ),
              Text(
                "Шар шувуу",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 5,
              ),
              Image.asset(
                'images/owl.jpg',
                scale: 1.4,
                height: 90,
              ),
              SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 50,
                width: 150,
                child: ElevatedButton(
                  onPressed: _onSubmit,
                  child: Text(
                    "Илгээх",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
