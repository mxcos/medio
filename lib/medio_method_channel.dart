import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'medio_platform_interface.dart';

/// An implementation of [MedioPlatform] that uses method channels.
class MethodChannelMedio extends MedioPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('medio');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
