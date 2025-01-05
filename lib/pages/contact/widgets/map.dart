import 'package:flutter_map/flutter_map.dart';
import 'package:flutter/material.dart';
import 'package:latlong2/latlong.dart';
import 'popup.dart';

class MapsBaseWidget extends StatefulWidget {
  const MapsBaseWidget({super.key});

  @override
  State<MapsBaseWidget> createState() => _MapsBaseWidgetState();
}

class _MapsBaseWidgetState extends State<MapsBaseWidget> {
  final List<Map<String, dynamic>> shops = [
    {
      "name": "IceCreams - Sainte-Anne",
      "address": "305 Route Nationale 2 (Sainte-Anne), 97437 Saint-Benoît, France",
      "phone": "+262 262 123 456",
      "latitude": -21.096574918606812,
      "longitude": 55.75469888238227,
    },
    {
      "name": "IceCreams - Saint-Louis",
      "address": "38 Rue Sainte Therese, 97450 Saint-Louis, France",
      "phone": "+262 262 654 321",
      "latitude": -21.283634612247532,
      "longitude": 55.41052402822798,
    },
    {
      "name": "IceCreams - Saint-Denis",
      "address": "8 Allée Bellavista, 97400 Saint-Denis, France",
      "phone": "+262 262 789 123",
      "latitude": -20.904876553075294,
      "longitude": 55.465216340525544,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FlutterMap(
        options: const MapOptions(
          initialCenter: LatLng(-21.114533, 55.532062499999995),
          initialZoom: 10.0,
        ),
        children: [
          TileLayer(
            urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
            userAgentPackageName: 'com.example.app',
          ),
          MarkerLayer(
            markers: shops.map((shop) {
              return Marker(
                point: LatLng(shop["latitude"], shop["longitude"]),
                width: 80,
                height: 80,
                child: GestureDetector(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (context) => ShopDialog(
                        name: shop["name"],
                        address: shop["address"],
                        phone: shop["phone"],
                      ),
                    );
                  },
                  child: Image.asset(
                    'assets/images/marker_ice_cream.png',
                    height: 40,
                    width: 40,
                  ),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
