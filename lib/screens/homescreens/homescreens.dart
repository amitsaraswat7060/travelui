import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:travelui/screens/detailspage/detailspage.dart';
import 'package:travelui/widgets/routes/routes.dart';

class HomeScreens extends StatelessWidget {
  TextEditingController TextController = TextEditingController();

  List<Map<String, dynamic>> arrMountain = [
    {
      'img':
          "https://andrewstuder.com/wp-content/uploads/2022/01/AF3I7570-Edit-scaled.jpg",
      'place': "Mountain"
    },
    {
      'img': "https://escales.ponant.com/wp-content/uploads/2020/12/plage.jpg",
      'place': "Beach"
    },
    {
      'img':
          "https://www.lefayresorts.com/magazine/wp-content/uploads/2021/02/neve-terapia.jpg",
      'place': "Snow"
    },
    {
      'img':
          "https://www.travelandleisure.com/thmb/I9VMFOpizyils9O_1TGqqpHXeYo=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/havasu-falls-arzona-us-WATERFALLS1021-d0967cd424ea4a2abde23cb3581144dc.jpg",
      'place': "WaterFall"
    },
    {
      'img':
          "https://loveincorporated.blob.core.windows.net/contentimages/gallery/e861f61b-9338-4251-9c73-5a5f9ec11759-Flathead_River_Maks_Ershov_Shutterstock_resized.jpg",
      'place': "River"
    },
    {
      'img':
          "https://i.insider.com/5ab96b1e83ea88e7008b459f?width=800&format=jpeg&auto=webp",
      'place': "Desert"
    }
  ];

  List<Map<String, dynamic>> arrData = [
    {
      'image':
          "https://andersonarchival.com/wp-content/uploads/2024/07/British-Museum.jpg",
      'place': "The British Museum",
      'rating': "4.9",
      'location': "London"
    },
    {
      'image':
          "https://res.cloudinary.com/dtljonz0f/image/upload/c_auto,ar_1:1,w_3840,g_auto/f_auto/q_auto/v1/gc-v1/london/AdobeStock_177268385.jpeg?_a=BAVARSAP0",
      'place': "Burj Khalifa",
      'rating': "4.8",
      'location': "London"
    },
    {
      'image':
          "https://cdn.contexttravel.com/image/upload/c_fill,q_60,w_2600/v1726676522/production/city/hero_image_11_1726676522427f69be.jpg",
      'place': "Ijen Crater",
      'rating': "2.8",
      'location': "London"
    },
    {
      'image':
          "https://images.squarespace-cdn.com/content/v1/62015f66f840ef671da14ae7/1689559493539-RZZE7533MT1YFSKDZO7R/Tower+Bridge+109.JPG",
      'place': "Ranu Kumbolao",
      'rating': "4.8",
      'location': "London"
    },
    {
      'image':
          "https://static.wanderon.in/wp-content/uploads/2024/05/travel-tips-london.jpg",
      'place': "Ijen Crater",
      'rating': "2.8",
      'location': "London"
    },
    {
      'image':
          "https://images.musement.com/cover/0002/49/london-jpeg_header-148518.jpeg",
      'place': "Ranu Kumbolao",
      'rating': "4.8",
      'location': "London"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                CupertinoIcons.line_horizontal_3_decrease,
                size: 35,
                color: Color(0XFF6F7789),
              ),
              Text(
                "Home",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0XFF6F7789),
                    fontSize: 22),
              ),
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 1, spreadRadius: 1, color: Colors.grey)
                    ]),
                child: Stack(
                  children: [
                    InkWell(
                      radius: 60,
                      onTap: () {},
                      child: Center(
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://media.licdn.com/dms/image/v2/C5622AQFYjAqdSkPtxQ/feedshare-shrink_800/feedshare-shrink_800/0/1629397591964?e=2147483647&v=beta&t=M6XxhfQUc57oZa7T3J8htKyaT9MrD_YyAz7QYFeKt8A"),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 3,
                      left: 0,
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 8,
                        child: Icon(
                          CupertinoIcons.bell_solid,
                          color: Color(0XFFF36D72),
                          size: 10,
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                "Wonderful Indonesia",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w900),
              ),
            ),
            SizedBox(
              height: 2,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                "Let’s Explore Together",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Color(0XFF6F7789)),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.deepPurple.shade50),
                child: TextField(
                  controller: TextController,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    hintText: "Search",
                    hintStyle: TextStyle(color: Colors.grey.shade500),
                    prefixIcon: Padding(
                      padding: const EdgeInsets.only(left: 30, right: 15),
                      child: Icon(
                        CupertinoIcons.search,
                        color: Colors.grey.shade500,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.grey.shade500),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide:
                            BorderSide(color: Colors.deepPurple.shade300)),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Text("Category",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500)),
            ),
            SizedBox(
              height: 5,
            ),
            SizedBox(
              height: 125,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: arrMountain.map((Eiteam) {
                      return InkWell(
                        onTap: () {},
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                radius: 38,
                                backgroundImage: NetworkImage(Eiteam['img']),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 15),
                                child: Text(
                                  Eiteam['place'],
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18),
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    }).toList()),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Text("Popular",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500)),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 200,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: arrData.map((eachitem) {
                      return InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DetailspageScreen(
                                        eachitem: eachitem,
                                      )));
                        },
                        child: Container(
                          margin: EdgeInsets.only(right: 10, left: 10),
                          height: 195,
                          width: 220,
                          decoration: BoxDecoration(
                              color: Colors.deepPurple.shade50,
                              borderRadius: BorderRadius.circular(15)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 11, left: 11),
                                child: Container(
                                  clipBehavior: Clip.antiAlias,
                                  height: 119,
                                  width: 197,
                                  decoration: BoxDecoration(boxShadow: [
                                    BoxShadow(
                                        blurRadius: 1,
                                        spreadRadius: 1,
                                        color: Colors.grey.shade400)
                                  ], borderRadius: BorderRadius.circular(13)),
                                  child: Image.network(
                                    eachitem['image'],
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, top: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      eachitem['place'],
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 14),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 12),
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.star,
                                            color: Color(0XFFEE684A),
                                            size: 16,
                                          ),
                                          Text(
                                            eachitem['rating'],
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 14,
                                                color: Color(0XFF6F7789)),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, top: 10),
                                child: Row(
                                  children: [
                                    Icon(
                                      CupertinoIcons.location_solid,
                                      color: Color(0XFFEE684A),
                                      size: 16,
                                    ),
                                    Text(eachitem['location'])
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    }).toList()),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Text("Top Place",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500)),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ListView(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  children: arrData.map((eachiteam) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DetailspageScreen(
                                      eachitem: eachiteam,
                                    )));
                      },
                      child: Container(
                        margin: EdgeInsets.only(top: 10, bottom: 10),
                        height: 118,
                        decoration: BoxDecoration(
                            color: Colors.deepPurple.shade50,
                            borderRadius: BorderRadius.circular(15)),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 12, left: 12),
                              child: Container(
                                clipBehavior: Clip.antiAlias,
                                height: 90,
                                width: 85,
                                decoration: BoxDecoration(boxShadow: [
                                  BoxShadow(
                                      blurRadius: 1,
                                      spreadRadius: 1,
                                      color: Colors.grey.shade400)
                                ], borderRadius: BorderRadius.circular(13)),
                                child: Image.network(
                                  eachiteam['image'],
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20, left: 10),
                              child: Column(
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(left: 10, top: 5),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          eachiteam['place'],
                                          style: TextStyle(
                                              fontWeight: FontWeight.w700,
                                              fontSize: 16),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 10),
                                          child: Row(
                                            children: [
                                              Icon(
                                                CupertinoIcons.location_solid,
                                                color: Color(0XFFEE684A),
                                                size: 16,
                                              ),
                                              Text(eachiteam['location'])
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              right: 12, top: 10),
                                          child: Row(
                                            children: [
                                              Icon(
                                                Icons.star,
                                                color: Color(0XFFEE684A),
                                                size: 16,
                                              ),
                                              Text(
                                                eachiteam['rating'],
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 14,
                                                    color: Color(0XFF6F7789)),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  }).toList()),
            ),
          ],
        ),
      ),
    );
  }
}
