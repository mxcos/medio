import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'medio_method_channel.dart';

abstract class MedioPlatform extends PlatformInterface {
  /// Constructs a MedioPlatform.
  MedioPlatform() : super(token: _token);

  static final Object _token = Object();

  static MedioPlatform _instance = MethodChannelMedio();

  /// The default instance of [MedioPlatform] to use.
  ///
  /// Defaults to [MethodChannelMedio].
  static MedioPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [MedioPlatform] when
  /// they register themselves.
  static set instance(MedioPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
