import 'package:flutter/foundation.dart';
import 'package:provider/provider.dart';

class create_provider extends ChangeNotifier
{
   int i=0;int sum=0;
   void add()
   {
     i++;
     notifyListeners();
   }
   void sub()
   {
     i--;
     notifyListeners();
   }
   void mul()
   {
     i=i*i;
     notifyListeners();
   }
   void multi()
   {
     i=i*i*i;
     notifyListeners();
   }
}