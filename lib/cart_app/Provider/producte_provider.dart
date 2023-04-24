import 'package:addvance_practice/cart_app/modal/producte_modal.dart';
import 'package:flutter/widgets.dart';

class Produte extends ChangeNotifier {
  List<modal> foodlist = [
    modal(name: "Burger", image: "assets/images/burger.png",price: 50, qa: 1,data: "A burger is a patty of ground beef grilled and placed between two halves of a bun."),
    modal(name: "Pizza", image: "assets/images/Pizza.png",price: 400, qa: 1,data: "To prepare this delicious Cheese Pizza recipe, preheat the oven on convection mode at 250 degree Celsius."),
    modal(name: "Sandwich", image: "assets/images/sandwich.png", price: 25,qa: 1,data: "A sandwich is a food typically consisting  or more generally any dish wrapper for another food type."),
    modal(name: "Chips", image: "assets/images/chips.png", price: 100, qa: 1,data: "A Chips is a snack food in the form of a crisp, flat or slightly bowl shaped, bite-sized unit."),
    modal(name: "Chinig", image: "assets/images/nodals.png", price: 150, qa: 1,data: " group of organisms linked in order of the food they eat, from predators, scavengers, and decomposers."),
    modal(name: "Nudals", image: "assets/images/nudals.png", price: 50, qa: 1,data: "hink of WickedGud Instant Noodles when it comes to healthy, guilt-free choice for family. "),
    modal(name: "Pani puri", image: "assets/images/panipuri.png", price: 20, qa: 1,data: "Gol gappa is a popular bite-size chaat consisting of a hollow, with potato, chickpeas, onions,"),


  ];
  List<modal> producteList = [

    modal(name: "Coffee", image: "assets/images/coffee.jpeg", price: 50, qa: 1),
    modal(
        name: "Cookies", image: "assets/images/cookies.jpeg", price: 20, qa: 1),
    modal(
        name: "Coca cola",
        image: "assets/images/coca cola.jpeg",
        price: 25,
        qa: 1),
    modal(
        name: "Chocolate",
        image: "assets/images/chocolate.jpeg",
        price: 100,
        qa: 1),
    modal(
        name: "hote coffee",
        image: "assets/images/coffee2.jpeg",
        price: 50,
        qa: 1),
    modal(name: "drink", image: "assets/images/drink.jpg", price: 60, qa: 1),
    modal(
        name: "Cocktails",
        image: "assets/images/cocktails.jpeg",
        price: 70,
        qa: 1),
  ];
  List<modal> cartlist = [];

  void increase(int index) {
    modal p1 = cartlist[index];

    modal updet =
        modal(name: p1.name, image: p1.image, price: p1.price, qa: p1.qa! + 1);

    cartlist[index] = updet;
    totalbill();
    notifyListeners();
  }

  void decrease(int index) {
    modal p1 = cartlist[index];
    if(p1.qa==1)
      {
         delete(index);
      }
    else
      {
        modal updet =
        modal(name: p1.name, image: p1.image, price: p1.price, qa: p1.qa! - 1);

        cartlist[index] = updet;
      }
    totalbill();
    notifyListeners();
  }

  void delete(int index) {
    cartlist.removeAt(index);
    totalbill();
    notifyListeners();
  }
  int total = 0;
  int finalprice = 0;

  void totalbill()
  {
    total = 0;
    for(int i = 0; i<cartlist.length ; i++)
    {
      total = total +  cartlist[i].price! * cartlist[i].qa! ;
    }
    notifyListeners();
  }
}
