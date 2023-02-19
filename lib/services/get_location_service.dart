
import 'package:geolocator/geolocator.dart';

class LocationService{


  Future<void> getcurrentLocation()async{

    var p = await Geolocator.requestPermission();

  }
}