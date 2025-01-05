class ShopInfos {
  String name;
  String address;
  String phone;
  double latitude;
  double longitude;

  ShopInfos({
    required this.name,
    required this.address,
    required this.phone,
    required this.latitude,
    required this.longitude,
  });

  static List<ShopInfos> shops() {
    return [
      ShopInfos(
        name: 'IceCreams - Sainte-Anne',
        address: '305 Route Nationale 2 (Sainte-Anne), 97437 Saint-Benoît, France',
        phone: '+262 262 123 456',
        latitude: -21.096574918606812,
        longitude: 55.75469888238227,
      ),
      ShopInfos(
        name: 'IceCreams - Saint-Louis',
        address: '38 Rue Sainte Therese, 97450 Saint-Louis, France',
        phone: '+262 262 654 321',
        latitude: -21.283634612247532,
        longitude: 55.41052402822798,
      ),
      ShopInfos(
        name: 'IceCreams - Saint-Denis',
        address: '8 Allée Bellavista, 97400 Saint-Denis, France',
        phone: '+262 262 789 123',
        latitude: -20.904876553075294,
        longitude: 55.465216340525544,
      ),
    ];
  }
}