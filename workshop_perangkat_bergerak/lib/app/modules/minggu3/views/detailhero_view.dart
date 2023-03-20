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
                child: Stack(
                  children: [
                    Positioned(
                      top: 20,
                      left: 20,
                      child: IconButton(
                        icon: Icon(Icons.arrow_back),
                        iconSize: 30,
                        color: Colors.white,
                        onPressed: () {
                          Get.back();
                        },
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Text(
                "${data['nama']}",
                style: TextStyle(
                  fontFamily: "Quantico",
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
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
                      Text(data["rank"],
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                          )),
                    ]),
                  ),
                  Container(
                    width: 100,
                    child: Column(children: [
                      Icon(Icons.insert_emoticon, color: Colors.yellow),
                      Text(data["role"],
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                          )),
                    ]),
                  ),
                  Container(
                    width: 100,
                    child: Column(children: [
                      Icon(Icons.favorite, color: Colors.yellow),
                      Text(data["total_skin"],
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                          )),
                    ]),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Text("${data['deskripsi']}",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      height: 1.8,
                    )),
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
