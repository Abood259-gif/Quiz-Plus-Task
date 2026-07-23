import 'orders_data.dart';
import 'orders_functions.dart';

void main() {
  var totalRevenue = total_revenue_per_city(orders);
    print(totalRevenue);
  print('///////////////////////////////');
  var topCustomers = top_five_custmers(orders);
    print(topCustomers);
  print('///////////////////////////////');
  var order_by_month = orders_by_month(orders);
  print(order_by_month);
  print('///////////////////////////////');
  var searchResults = search('ah', orders);
  print(searchResults);
}


