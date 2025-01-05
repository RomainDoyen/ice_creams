import 'package:flutter_map/flutter_map.dart';
import 'package:flutter/material.dart';
import 'package:ice_creams/models/shopinfos.dart';
import 'package:latlong2/latlong.dart';
import 'popup.dart';

class MapsBaseWidget extends StatefulWidget {
  const MapsBaseWidget({super.key});

  @override
  State<MapsBaseWidget> createState() => _MapsBaseWidgetState();
}

class _MapsBaseWidgetState extends State<MapsBaseWidget> {
  final List<ShopInfos> shops = ShopInfos.shops();

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
                point: LatLng(shop.latitude, shop.longitude),
                width: 80,
                height: 80,
                child: GestureDetector(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (context) => ShopDialog(
                        name: shop.name,
                        address: shop.address,
                        phone: shop.phone,
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
