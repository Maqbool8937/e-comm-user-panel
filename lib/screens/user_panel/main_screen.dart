
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:my_shopping_app/services/fcm_service.dart';
import 'package:my_shopping_app/services/notification_service.dart';

import '../../services/get_server_key.dart';
import '../../utils/app_constant.dart';
import '../../widgets/all_product_widget.dart';
import '../../widgets/banner_widget.dart';
import '../../widgets/category_widget.dart';
import '../../widgets/custom_drawer_widget.dart';
import '../../widgets/flash_sale.dart';
import '../../widgets/heading_widget.dart';
import 'all_categories_screen.dart';
import 'all_flash_product_screen.dart';
import 'all_product_screen.dart';
import 'cart_screen.dart';


class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  NotificationService notificationService=NotificationService();
  GetServerKey getServerKey=GetServerKey();
  @override
  void initState() {
    super.initState();
    getServerKey.getServerKeyToken();
    notificationService.requestNotificationPermission();
    notificationService.getDeviceToken();
    notificationService.firebaseInit(context);
    notificationService.setupInteractMessage(context);
   // FcmService.firebaseInit();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: AppConstant.appTextColor),
        systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: AppConstant.appScendoryColor,
            statusBarIconBrightness: Brightness.light),
        backgroundColor: AppConstant.appMainColor,
        title: Text(
          AppConstant.appMainName,
          style: TextStyle(color: AppConstant.appTextColor),
        ),
        centerTitle: true,
        actions: [
          GestureDetector(
              onTap: () => Get.to(() => CartScreen()),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.shopping_cart,
              ),
            ),
          ),
        ],
      ),
      drawer: DrawerWidget(),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Container(
          child: Column(
            children: [
              SizedBox(
                height: Get.height / 90.0,
              ),
              //banners
              BannerWidget(),
              //
              // //heading
              HeadingWidget(
                headingTitle: "Categories",
                headingSubTitle: "According to your budget",
                //   onTap: (){},
                onTap: () => Get.to(() => AllCategoriesScreen()),
                buttonText: "See More >",
              ),
              //
              CategoriesWidget(),
              //
              // //heading
              HeadingWidget(
                headingTitle: "Flash Sale",
                headingSubTitle: "According to your budget",
                // onTap: (){},
                onTap: () => Get.to(() => AllFlashSaleProductScreen()),
                buttonText: "See More >",
              ),
              //
              FlashSaleWidget(),
              //
              //heading
              HeadingWidget(
                headingTitle: "All Products",
                headingSubTitle: "According to your budget",
                onTap: () => Get.to(() => AllProductsScreen()),
                buttonText: "See More >",
              ),
              //
               AllProductsWidget(),
            ],
          ),
        ),
      ),
    );
  }
}

