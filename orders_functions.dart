

Map<String, dynamic> total_revenue_per_city(List<Map<String, dynamic>> orders) {
  Map<String, dynamic> revenue_per_city = {};
  orders.map((e) {
    revenue_per_city.containsKey(e['city'])
        ? revenue_per_city[e['city']] += e['total']
        : revenue_per_city[e['city']] = e['total'];
  }).toList();
  return revenue_per_city;
}

/////////////////////////////
List<String> top_five_custmers(List<Map<String, dynamic>> orders) {
  Map<String, dynamic> total_custmers = {};
  orders.map((e) {
    total_custmers.containsKey(e['customer'])
        ? total_custmers[e['customer']] += e['total']
        : total_custmers[e['customer']] = e['total'];
  }).toList();
  var sorted_total_custmers = total_custmers.entries.toList()
    ..sort((a, b) => b.value.compareTo(a.value));
  List<String> top_five_custmers = sorted_total_custmers
      .take(5)
      .map((e) => e.key)
      .toList();
  return top_five_custmers;
}

/////////////////////////////
Map<String, List<Map<String, dynamic>>> orders_by_month(
  List<Map<String, dynamic>> orders,
) {
  Map<String, List<Map<String, dynamic>>> orders_by_month = {};
  orders.map((e) {
    String key = e['date'].toString().split('-')[1];
    orders_by_month[key] ??= [] ;
    orders_by_month[key]!.add(e);
  }).toList();
  return orders_by_month;
}

/////////////////////////////
String search(String search, List<Map<String, dynamic>> orders) {
  String result = '';
  orders.map((e) {
    if (e['customer'].toString().toLowerCase().contains(search.toLowerCase())) {
      result += e['customer'] + '\n';
    }
  }).toList();
  return result;
}
