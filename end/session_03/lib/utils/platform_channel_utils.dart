import 'package:flutter/services.dart';

const platform = MethodChannel("platformchannels.example.com");

Future<Null> callAndroid() async {
  await platform.invokeMethod('openView');
}
