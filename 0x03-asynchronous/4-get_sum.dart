import '4-util.dart';
import 'dart:convert';

Future<double> calculateTotal() async {
  try {
    // get user data
    final dataUser = await fetchUserData();
    final dataUserConvert = json.decode(dataUser);
    final userId = dataUserConvert['id'];

    // get user orders
    final dataUserOrder = await fetchUserOrders(userId);
    final dataUserOrderConvert = json.decode(dataUserOrder);
    final orders = List<String>.from(dataUserOrderConvert);

    // Initialize total price
    double totalPrice = 0;

    // Iterate through user orders
    for (var product in orders) {
      // Get product price
      final dataProductPrice = await fetchProductPrice(product);
      final price = json.decode(dataProductPrice);

      // Calculate total price for this product
      totalPrice += price;
    }

    return totalPrice;
  } catch (e) {
    print("Error: $e");
    return -1;
  }
}

void main() async {
  print(await calculateTotal());
}
