import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:carousel_slider/carousel_slider.dart';

class DetailHeroView extends GetView {
  const DetailHeroView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var data = Get.arguments;
    double paddingTop = context.mediaQueryPadding.top;
    List<Widget> listgalery = [
      for (var i = 0; i < data['galery'].length; i++)
        Container(
          width: Get.width,
          height: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              image: AssetImage(data['galery'][i]),
              fit: BoxFit.cover,
            ),
          ),
        )
    ];
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: paddingTop),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: Get.width,
                height: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(data['banner']),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text(
                "${data['nama']}",
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 100,
                    child: Column(children: [
                      Icon(Icons.star, color: Colors.yellow),
                      Text(data["rank"]),
                    ]),
                  ),
                  Container(
                    width: 100,
                    child: Column(children: [
                      Icon(Icons.insert_emoticon, color: Colors.yellow),
                      Text(data["role"]),
                    ]),
                  ),
                  Container(
                    width: 100,
                    child: Column(children: [
                      Icon(Icons.favorite, color: Colors.yellow),
                      Text(data["total_skin"]),
                    ]),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Text(
                  "${data['deskripsi']}",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 17,
                    fontWeight: FontWeight.w300,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              CarouselSlider(
                items: listgalery,
                options: CarouselOptions(enlargeCenterPage: true),
              ),
              SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
