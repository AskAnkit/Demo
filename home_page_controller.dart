import 'package:bottombar/models/group_models.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ControllerHomePage extends GetxController {
  RxList<GroupModels> groupList = <GroupModels>[].obs;
  RxList<GroupModels> secondList = <GroupModels>[
].obs;

  @override
  void onInit() {
    super.onInit();
    groupList.refresh();
    loadItems();
  }

  loadItems() {
    List<GroupModels> newItems = [

      GroupModels(
          selectedItems: false.obs,
          subtitle: "is data binding ",
          title: "Ankit",
          avatar: const Icon(Icons.verified_user)),
      GroupModels(
          selectedItems: false.obs,
          subtitle: "is data bdinging ",
          title: "Ankit",
          avatar: const Icon(Icons.verified_user)),
      GroupModels(
          selectedItems: false.obs,
          subtitle: "is data bdinging ",
          title: "Ankit",
          avatar: const Icon(Icons.verified_user))
    ];
    groupList.assignAll(newItems);
  }
}

/*oupModels(
          selectedItems: false,
          subtitle: "is data bdinging ",
          title: "Ankit",
          avatar: const Icon(Icons.verified_user)),
      GroupModels(
          selectedItems: false,
          subtitle: "is data bdinging ",
          title: "Ankit",
          avatar: const Icon(Icons.verified_user)),
      GroupModels(
          selectedItems: false,
          subtitle: "is data bdinging ",
          title: "Ankit",
          avatar: const Icon(Icons.verified_user))*/
