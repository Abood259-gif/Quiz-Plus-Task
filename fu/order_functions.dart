Map<String, dynamic> total_revenue_per_city(List<Map<String, dynamic>> orders) {
  Map<String, dynamic> revenue_per_city = {};
  orders.map((e) => revenue_per_city[e['city']] += e['total']);
  return revenue_per_city;
}
