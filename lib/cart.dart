//(Utility File for Cart Management
    class Cart {
  List<Map<String, dynamic>> items = [];

  void addItem(Map<String, dynamic> item) {
    int index = items.indexWhere((element) => element['title'] == item['title']);
    if (index != -1) {
      items[index]['quantity'] += 1;
    } else {
      items.add({...item, 'quantity': 1});
    }
  }

  void removeItem(Map<String, dynamic> item) {
    int index = items.indexWhere((element) => element['title'] == item['title']);
    if (index != -1 && items[index]['quantity'] > 1) {
      items[index]['quantity'] -= 1;
    } else {
      items.removeWhere((element) => element['title'] == item['title']);
    }
  }

  double get totalAmount {
    return items.fold(0.0, (sum, item) => sum + item['price'] * item['quantity']);
  }

  void clear() {
    items.clear();
  }
}

Cart cart = Cart();
