import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class GroupModels{
   Widget? avatar;
   String ?title;
   String? subtitle;
   RxBool selectedItems;

  GroupModels({ required this.selectedItems,this.avatar, this.title, this.subtitle});
}