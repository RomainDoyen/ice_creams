import 'package:flutter_map/flutter_map.dart';
import 'package:flutter/material.dart';
import 'package:latlong2/latlong.dart';

class MapsBaseWidget extends StatefulWidget {
  const MapsBaseWidget({super.key});

  @override
  State<MapsBaseWidget> createState() => _MapsBaseWidgetState();
}

class _MapsBaseWidgetState extends State<MapsBaseWidget> {
  final List<Marker> markers = [];

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
          RichAttributionWidget(
            attributions: [
              TextSourceAttribution(
                'OpenStreetMap contributors',
                onTap: () => launchUrl(Uri.parse('https://openstreetmap.org/copyright')),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

launchUrl(Uri parse) {}