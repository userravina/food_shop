import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Provider/producte_provider.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  Produte? providerF;
  Produte? providerT;

  @override
  Widget build(BuildContext context) {
    providerF = Provider.of<Produte>(context, listen: false);
    providerT = Provider.of<Produte>(context, listen: true);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.indigo.shade50,
        body: Center(
          child: Padding(
            padding: EdgeInsets.all(15),
            child: Column(
              children: [
                Row(children: [
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "${providerF!.cartlist.length}  Items In Cart",
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                ]),
                SizedBox(
                  height: 15,
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: providerF!.cartlist.length,
                    itemBuilder: (context, index) {
                      return Container(
                        height: 110,
                        margin: EdgeInsets.only(top: 20),
                        decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(20)),
                        child: Row(
                          children: [
                            Container(
                                height: 110,
                                width: 110,
                                margin: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "${providerF!.cartlist[index].image}"),
                                        fit: BoxFit.fill))),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 15, left: 5, bottom: 15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Text(
                                    "${providerF!.cartlist[index].name}",
                                    style: TextStyle(fontSize: 16),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "₹${providerT!.cartlist[index].price! * providerT!.cartlist[index].qa!}",
                                    style: TextStyle(fontSize: 12.5),
                                  ),
                                ],
                              ),
                            ),
                            Spacer(),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                IconButton(
                                    onPressed: () {
                                      providerF!.delete(index);
                                    },
                                    icon: Icon(
                                      Icons.close_rounded,
                                      size: 20,
                                      color: Colors.deepPurple,
                                    )),
                                Spacer(),
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    IconButton(
                                        onPressed: () {
                                          providerF!.decrease(index);
                                        },
                                        icon: Icon(
                                          Icons.remove_circle_outline_outlined,
                                          color: Colors.deepPurple,
                                        )),
                                    Container(
                                        height: 18,
                                        width: 18,
                                        alignment: Alignment.center,
                                        child: Text(
                                          "${providerT!.cartlist[index].qa}",
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.black),
                                        )),
                                    IconButton(
                                        onPressed: () {
                                          providerF!.increase(index);
                                        },
                                        icon: Icon(
                                          Icons.add_circle_outline_outlined,
                                          color: Colors.deepPurple,
                                        )),
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Total",
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                    Text("₹ ${providerT!.total}.00",
                        style:
                            TextStyle(fontSize: 20, color: Colors.deepPurple))
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Divider(color: Colors.black),
                Row(
                  children: [
                    Text("Order instructions", style: TextStyle(fontSize: 15)),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 70,
                  alignment: Alignment.center,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      border: Border.all(color: Colors.deepPurple),
                      borderRadius: BorderRadius.circular(25)),
                ),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/');
                  },
                  child: Container(
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.deepPurple.shade400),
                      child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            "Checkout",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ))),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
