import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/home_page_controller.dart';

class HomePageScreen extends StatelessWidget {
  HomePageScreen({Key? key}) : super(key: key);
  final _controller = Get.put(ControllerHomePage());

  List storeData = [];

  @override
  Widget build(BuildContext context) {
    // _controller.getData();
    return Scaffold(
        appBar: AppBar(
          title: Text("helloo"),
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            children: [
              /*  Container(
              height: 60,
              width: double.infinity,
              child: ListView.builder(itemBuilder: (BuildContext context, int index) {

               ControllerHomePage

              },),
            )*/
             Obx(
                    ()=>
                    _controller.secondList.length > 0
                        ? Container(
                        height: 60,
                        width: MediaQuery.of(context).size.width,
                        child:
                           ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: _controller.secondList.length,
                            itemBuilder: (BuildContext context, int index) {
                              return CircleAvatar(
                                  child: _controller.groupList[index].avatar);
                            },
                          ),

                      ): Container(),
                  ) ,
              Expanded(
                child: Container(
                  child: ListView.builder(
                    itemCount: _controller.groupList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return ListTile(
                        onTap: () {
                          _controller.groupList[index].selectedItems.value =
                              !_controller.groupList[index].selectedItems.value;
                          print(_controller.groupList[index].selectedItems);

                          if (_controller
                              .groupList[index].selectedItems.value) {
                            _controller.secondList
                                .add(_controller.groupList[index]);
                          } else {
                            _controller.secondList
                                .remove(_controller.groupList[index]);
                          }
                        },
                        leading: Obx(
                          () => Stack(children: [
                            CircleAvatar(
                                child: _controller.groupList[index].avatar),
                            Positioned(
                                bottom: 0,
                                right: 0,
                                child: _controller
                                        .groupList[index].selectedItems.value
                                    ? const Icon(
                                        Icons.done,
                                        size: 20,
                                        color: Colors.white,
                                      )
                                    : Container(
                                        child: const Text(
                                          "yes ",
                                          style: TextStyle(color: Colors.black),
                                        ),
                                      ))
                          ]),
                        ),
                        title:
                            Text(_controller.groupList[index].title.toString()),
                        subtitle: Text(
                            _controller.groupList[index].subtitle.toString()),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
