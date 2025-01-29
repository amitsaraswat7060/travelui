import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailspageScreen extends StatelessWidget {

  Map<String,dynamic>eachitem;

  DetailspageScreen ({required this.eachitem});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 400,
            width: double.infinity,
            color: Colors.blue,
            child: Image.network(
              eachitem["image"],
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 350),
            child: Align(
              alignment: Alignment.center,
              child: Container(
                height: double.maxFinite,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.deepPurple.shade50,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(35),
                        topLeft: Radius.circular(35))),
                child: Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 30,
                        ),
                        child: Text(
                          eachitem["place"],
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Row(
                          children: [
                            Icon(
                              CupertinoIcons.location_solid,
                              color: Color(0XFFEE684A),
                              size: 22,
                            ),
                            SizedBox(width: 5),
                            Text(
                              eachitem['location'],
                              style: TextStyle(fontSize: 16),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 12, top: 10),
                        child: Expanded(
                          child: Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Color(0XFFEE684A),
                                size: 22,
                              ),
                              SizedBox(width: 5),
                              Text(
                                eachitem['rating'],
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16,
                                    color: Color(0XFF6F7789)),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Description",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Arcu amet tempor, in massa, habitasse habitasse fermentum, sed faucibus.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Arcu amet tempor, in massa, habitasse habitasse fermentum, sed faucibus.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Arcu amet tempor, in massa, habitasse habitasse fermentum, sed faucibus. Augue arcu, ac proin accumsan urna morbi diam nunc, tincidunt. Ac turpis amet vitae dui aliquam vitae nunc. Non enim, lorem duis maecenas odio Read More "),
                      SizedBox(
                        height: 40,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(backgroundColor: Color(0XFFF36D72),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                maximumSize: Size(350, 50),
                                minimumSize: Size(300, 50)),
                            onPressed: () {},
                            child: Text("Save a Trip",style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.bold),)),
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
