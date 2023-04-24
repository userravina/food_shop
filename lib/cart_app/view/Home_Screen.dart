import 'package:addvance_practice/cart_app/Provider/producte_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({Key? key}) : super(key: key);

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  Produte? provide;

  @override
  Widget build(BuildContext context) {
    provide = Provider.of<Produte>(context, listen: false);
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    "Menu",
                    style: TextStyle(fontSize: 30),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 200, top: 15),
                    child: CircleAvatar(
                      radius: 20,
                      backgroundImage: AssetImage("assets/images/women.jpeg"),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 40,
                alignment: Alignment.center,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(25)),
                child: TextFormField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Search",
                      prefixIcon:
                          Icon(Icons.search, color: Colors.grey.shade400)),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 100,
                width: double.infinity,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        InkWell(onTap: () {
                          Navigator.pushNamed(context, "detail",
                              arguments: index);
                        },
                          child: Container(
                            width: 70,
                            height: 50,
                            decoration: BoxDecoration(
                                color: Colors.grey.shade200,
                                borderRadius: BorderRadius.circular(10)),
                            margin: EdgeInsets.all(10),
                            child: Image.asset("${provide!.foodlist[index].image}"),
                          ),
                        ),
                        Text("${provide!.foodlist[index].name}"),
                      ],
                    );
                  },
                  itemCount: provide!.foodlist.length,
                ),
              ),
              Row(
                children: [
                  Text(
                    "Promotions",
                    style: TextStyle(fontSize: 25),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Stack(
                  children: [
                    Container(
                      height: 150,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.deepPurple.shade500,
                          borderRadius: BorderRadius.circular(50)),
                      child: Row(children: [
                        Padding(
                            padding: EdgeInsets.only(left: 5),
                            child: Image(
                                image: AssetImage("assets/images/discount.png"))),
                        Padding(
                            padding: EdgeInsets.only(left: 1),
                            child: Text(
                              " Today's offer \n50% Discount \n  of all menu",
                              style: TextStyle(color: Colors.white),
                            )),
                      ]),
                    ),
                    Padding(
                        padding: EdgeInsets.only(
                          left: 240,
                          top: 90,
                        ),
                        child: Container(
                            height: 100,
                            width: 100,
                            child: Image(
                                image: AssetImage("assets/images/burger.png")))),
                  ],
                ),
              ),
              Row(
                children: [
                  Text(
                    "Popular",
                    style: TextStyle(fontSize: 25),
                  ),
                ],
              ),
              SizedBox(height: 230,
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, "detail",
                              arguments: index);
                        },
                        child: Container(
                          height: 290,
                          width: 180,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),color: Colors.grey.shade200
                          ),child: SingleChildScrollView(
                            child: Column(
                                        children: [
                                          SizedBox(height: 8),
                                          Container(
                                            height: 110,
                                            width: 130,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage(
                                                        "${provide!.foodlist[index].image}"),
                                                    fit: BoxFit.fill)),
                                          ),
                                          SizedBox(height: 8),
                                         Container(
                                           height: 180,
                                           width: 180,
                                           child: Column(
                                             crossAxisAlignment: CrossAxisAlignment.start,
                                             children: [
                                               Padding(padding: EdgeInsets.only(left: 10),
                                                 child: Text(
                                                   "${provide!.foodlist[index].name}",
                                                   style: TextStyle(
                                                     fontSize: 16,
                                                   ),
                                                 ),
                                               ),
                                               Padding(padding: EdgeInsets.only(left: 10),
                                                 child: Text(
                                                   "₹ ${provide!.foodlist[index].price}",
                                                   style: TextStyle(
                                                       fontSize: 15, color: Colors.black),
                                                 ),
                                               ),
                                               Padding(padding: EdgeInsets.only(left: 10),
                                                 child: Text(
                                                   " ${provide!.foodlist[index].data}",
                                                   style: TextStyle(
                                                       fontSize: 15, color: Colors.black),
                                                 ),
                                               ),
                                             ],
                                           ),
                                         )
                                        ],
                                      ),
                          ),
                        ),
                      ),
                    );
                  },itemCount: provide!.foodlist.length,
                  scrollDirection: Axis.horizontal,
                ),
              )
              // Padding(
              //   padding: const EdgeInsets.only(top: 400),
              //   child: GridView.builder(
              //       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              //           crossAxisCount: 2,
              //           crossAxisSpacing: 10,
              //           mainAxisSpacing: 10),
              //       itemCount: provide!.producteList.length,
              //       itemBuilder: (context, index) => InkWell(
              //         onTap: () => Navigator.pushNamed(context, "detail",
              //             arguments: index),
              //         child: Container(
              //           height: 160,
              //           width: 160,
              //           alignment: Alignment.center,
              //           decoration: BoxDecoration(
              //               borderRadius: BorderRadius.circular(15),
              //               color: Colors.brown.shade100),
              //           child: SingleChildScrollView(
              //             child: Column(
              //               children: [
              //                 SizedBox(height: 8),
              //                 Container(
              //                   height: 110,
              //                   width: 130,
              //                   decoration: BoxDecoration(
              //                       image: DecorationImage(
              //                           image: AssetImage(
              //                               "${provide!.producteList[index].image}"),
              //                           fit: BoxFit.fill)),
              //                 ),
              //                 SizedBox(height: 8),
              //                 Text(
              //                   "${provide!.producteList[index].name}",
              //                   style: TextStyle(
              //                     fontSize: 16,
              //                   ),
              //                 ),
              //                 Text(
              //                   "₹ ${provide!.producteList[index].price}",
              //                   style: TextStyle(
              //                       fontSize: 15, color: Color(0xff666666)),
              //                 ),
              //               ],
              //             ),
              //           ),
              //         ),
              //       )),
              // ),
            ],
          ),
        ),
      ),
    ));
  }

  Widget box() {
    return Container();
  }
}
