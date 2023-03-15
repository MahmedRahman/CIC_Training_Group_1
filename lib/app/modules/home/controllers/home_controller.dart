import 'package:get/get.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}

class HomeControllerApi extends GetConnect {
  Future<List> getProduct() async {
    Response response = await get("https://629656fc75c34f1f3b2e0b36.mockapi.io/api/v1/product");
    print("aaaaaaaaaaaaaaaaaa");
    print(response.body);
    print("aaaaaaaaaaaaaaaaaa");

    return response.body;
  }
}
