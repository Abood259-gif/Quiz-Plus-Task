import 'orders_data.dart';
import 'orders_functions.dart';

void main() {
  print(total_revenue_per_city(orders));
  print('///////////////////////////////');
  print(top_five_custmers(orders));
  print('///////////////////////////////');
  orders_by_month(orders).forEach((month, orders) {
    print("Month: $month");
    print(orders);
    print("----------------");
  });
}

List<String> month(String date) {
  return date.split('');
}
