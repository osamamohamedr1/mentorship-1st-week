abstract class DrinkModel {
  String get name;
}

class Shai extends DrinkModel {
  final String _name = 'Shai';

  @override
  String get name => _name;
}

class TurkishCoffee extends DrinkModel {
  final String _name = 'Turkish Coffee';

  @override
  String get name => _name;
}

class HibiscusTea extends DrinkModel {
  final String _name = 'Hibiscus Tea';

  @override
  String get name => _name;
}
