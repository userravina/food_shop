import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Provider/producte_provider.dart';

class Detail extends StatefulWidget {
  const Detail({Key? key}) : super(key: key);

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  Produte? provide;

  @override
  Widget build(BuildContext context) {
    provide = Provider.of<Produte>(context, listen: false);
    int index = ModalRoute.of(context)!.settings.arguments as int;
    return SafeArea(
      child: Scaffold(
        body: Stack(children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(color: Colors.deepPurple),
            child: Column(children: [
              Padding(
                  padding: EdgeInsets.only(right: 270, top: 20),
                  child: InkWell(onTap:() {
                    Navigator.pushNamed(context, '/');
                  },
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                      size: 35,
                    ),
                  )),
              Image.asset("${provide!.foodlist[index].image}"),
            ]),
            //   height: double.infinity,
            //   width: double.infinity,
            //   decoration: BoxDecoration(
            //       image: DecorationImage(
            //           image: NetworkImage(
            //               "https://img.freepik.com/free-vector/white-elegant-texture-wallpaper_23-2148417584.jpg"),
            //           fit: BoxFit.fill),
            //       borderRadius: BorderRadius.only(
            //           bottomRight: Radius.circular(120))
            //   ),
            // ),
            //   Container(
            //     height: 300,
            //     width: double.infinity,
            //     decoration: BoxDecoration(
            //         color: Colors.brown.shade100,
            //         borderRadius: BorderRadius.only(
            //             bottomRight: Radius.circular(150),
            //             bottomLeft: Radius.circular(150))),
            //   ),Padding(padding: EdgeInsets.only(left: 100,top: 200),
            //     child: Container(
            //       decoration: BoxDecoration(
            //         color: Colors.white,
            //         shape: BoxShape.circle,
            //         boxShadow: [BoxShadow(blurRadius: 10, color: Colors.brown.shade400, spreadRadius: 5)],
            //       ),
            //       child: CircleAvatar(
            //           radius: 80,
            //           backgroundImage: AssetImage("${provide!.producteList[index].image}"),),
            //     ),
            //   ),
            //   Column(mainAxisAlignment: MainAxisAlignment.end,children: [  Text(
            //     "${provide!.producteList[index].name}",
            //     style: TextStyle(fontSize: 20,color: Colors.brown),
            //   ),
            //     const Divider(),
            //     Text(
            //       "price :- ${provide!.producteList[index].price}",
            //       style: TextStyle(fontSize: 15),
            //     ),
            //     SizedBox(height: 20,),
            //     ElevatedButton(onPressed: () {
            //       provide!.cartlist.add(provide!.producteList[index]);
            //     }, child: Text("Add to cart "),style: ElevatedButton.styleFrom(backgroundColor: Colors.brown.shade400),),SizedBox(height: 200,),],)
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 423,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.only(topLeft: Radius.circular(90))),
              child: Padding(
                padding: EdgeInsets.all(30),
                child: Column(
                  children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 50,
                            width: 100,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.deepPurple),
                            child: Align(
                                alignment: Alignment.center,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                    ),
                                    Text(
                                      "  4.8",
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    )
                                  ],
                                )),
                          ),
                          Text(
                            "₹ ${provide!.foodlist[index].price}",
                            style: TextStyle(fontSize: 25),
                          ),
                        ]),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "${provide!.foodlist[index].name}",
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 1),
                        ),

                      ],
                    ),
                    SizedBox(height: 10),
                    Container(
                      height: 60,
                      width: double.infinity,
                      child: Text(
                        "${provide!.foodlist[index].data}",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Add",
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 1),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
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
                                  child: Image.asset(
                                      "${provide!.foodlist[index].image}"),
                                ),
                              ),
                              Text("${provide!.foodlist[index].name}"),
                            ],
                          );
                        },
                        itemCount: provide!.foodlist.length,
                      ),
                    ),
                    InkWell(onTap: () {
                      provide!.cartlist.add(provide!.foodlist[index]);
                    },
                      child: Ink(
                        child: Container(
                          height: 50,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.deepPurple,
                              borderRadius: BorderRadius.circular(20)),
                          child: ElevatedButton(onPressed: () {
                            provide!.cartlist.add(provide!.foodlist[index]);
                          },child: Text("Add To Cart",style: TextStyle(fontSize: 20)),style: ElevatedButton.styleFrom(backgroundColor: Colors.deepPurple,),)
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
