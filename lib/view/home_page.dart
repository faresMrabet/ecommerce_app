import 'package:ecommerce_app/config/account_info_storage.dart';
import 'package:ecommerce_app/controlleur/product_controlleur.dart';
import 'package:ecommerce_app/view/getstarted_view.dart';
import 'package:ecommerce_app/view/sign_in.dart';
import 'package:ecommerce_app/widget/custom_composant.dart';
import 'package:ecommerce_app/widget/custom_marque.dart';
import 'package:ecommerce_app/widget/input_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:molten_navigationbar_flutter/molten_navigationbar_flutter.dart';

class HomePage extends GetView<ProductControlleur> {
  @override
  Widget build(BuildContext context) {
    controller.getListProduct();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Container(
          child: Image(
            image: AssetImage('assets/images/logoo.png'),
            width: 180,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Icon(
              Icons.favorite,
              size: 27,
              color: Colors.white,
            ),
          ),
        ],
      ),
      drawer: ClipRRect(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(15), bottomRight: Radius.circular(100)),
        child: Drawer(
          child: ListView(
            children: [
              //  Text('fares'),
              UserAccountsDrawerHeader(
                margin: EdgeInsets.all(15),
                accountName: Text('${AccountInfoStorage.readName()}'),
                accountEmail: Text('${AccountInfoStorage.reademail()}'),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/nike.png'),
                  maxRadius: 60,
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.home,
                  color: Colors.blue,
                ),
                title: Text(
                  '${AccountInfoStorage.readName()}',
                  style: TextStyle(
                      fontFamily: 'italic', fontWeight: FontWeight.bold),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.account_box,
                  color: Colors.blue,
                ),
                title: Text(
                  'Profile',
                  style: TextStyle(
                      fontFamily: 'italic', fontWeight: FontWeight.bold),
                ),
              ),
              ListTile(
                hoverColor: Colors.black,
                leading: Icon(
                  Icons.security,
                  color: Colors.blue,
                ),
                title: Text(
                  'About',
                  style: TextStyle(
                      fontFamily: 'italic', fontWeight: FontWeight.bold),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.logout,
                  color: Colors.blue,
                ),
                title: TextButton(
                  onPressed: () {
                    Get.to(GetstartedView());
                  },
                  child: Text(
                    'Log Out',
                    style: TextStyle(
                        fontFamily: 'italic', fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InputText(
                nameText: 'search',
                iconData: Icons.search,
                hint: 'enter your search',
                obscuretexte: false),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Container(
                width: 350,
                height: 160,
                decoration: BoxDecoration(
                    color: Colors.red[400],
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Colors.grey, width: 1)),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Text(
                        'Special Today',
                        style: TextStyle(
                            fontFamily: 'italic',
                            fontSize: 14,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      Image(
                        image: AssetImage('assets/images/nikerouge.png'),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        CustomMarque(
                          marque: 'nike',
                          marque2: 'assets/images/nike.png',
                        ),
                        CustomMarque(
                          marque: 'Pima',
                          marque2: 'assets/images/pima.png',
                        ),
                        CustomMarque(
                          marque: 'Adidas',
                          marque2: 'assets/images/adidas.png',
                        ),
                        CustomMarque(
                          marque: 'Vans',
                          marque2: 'assets/images/vans.png',
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        CustomMarque(
                          marque: 'Fila',
                          marque2: 'assets/images/fila.png',
                        ),
                        CustomMarque(
                          marque: 'Under',
                          marque2: 'assets/images/under.png',
                        ),
                        CustomMarque(
                          marque: 'Red',
                          marque2: 'assets/images/red.png',
                        ),
                        CustomMarque(
                          marque: 'see all',
                          marque2: 'assets/images/nike.png',
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          'Most Popular',
                          style: TextStyle(
                              fontFamily: 'italic',
                              fontWeight: FontWeight.bold),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 198.0),
                          child: Text(
                            'See All',
                            style: TextStyle(
                                fontFamily: 'italic',
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            GetBuilder<ProductControlleur>(builder: (controller) {
              return ListView.builder(
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      AccountInfoStorage.saveIdProduct(controller
                          .listProductJson!.productData![index].sId
                          .toString());
                      controller.getProduitById();
                    },
                    child: CustomComposant(
                      name:
                          '${controller.listProductJson!.productData![index].sId}',
                    ),
                  );
                },
                itemCount: 1, //controller.listProductJson!.productData!.length,
              );
            })
          ],
        ),
      ),
      bottomNavigationBar: GetBuilder<ProductControlleur>(
        builder: (controller) {
          return MoltenBottomNavigationBar(
            selectedIndex: controller.selectedIndex,
            onTabChange: controller.OnTapItem,

            // (clickedIndex) {
            //   setState(() {
            //     _selectedIndex = clickedIndex;
            //   });
            // },
            tabs: [
              MoltenTab(
                icon: Icon(Icons.home),
                selectedColor: Colors.red,
              ),
              MoltenTab(
                icon: Icon(Icons.card_travel),
                selectedColor: Colors.red,
              ),
              MoltenTab(
                icon: Icon(Icons.ballot_sharp),
                selectedColor: Colors.red,
              ),
              MoltenTab(
                icon: Icon(Icons.person),
                selectedColor: Colors.red,
              ),
            ],
          );
        },
      ),
    );
  }
}
