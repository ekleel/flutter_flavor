import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

const MethodChannel _channel = MethodChannel('plugins.ekleel.net/flavor');

/// Create FlutterFlavor Class
class FlutterFlavor {
  /// Handle Flavor
  static Future<String> getFlavor({String fallback}) async {
    String str = fallback;

    if (kIsWeb) return str;

    /// listen to channels
    str = await _channel.invokeMethod<String>('getFlavor').catchError((e) => _handleFlavorError(e, fallback));

    print('@@ FlutterFlavor found flavor: $str');

    return str;
  }

  static String _handleFlavorError(error, fallback) {
    print('FlutterFlavor handleFlavor - error: $error -- fallback to $fallback');
    return fallback;
  }
}
