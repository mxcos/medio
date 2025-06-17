
import 'medio_platform_interface.dart';

class Medio {
  Future<String?> getPlatformVersion() {
    return MedioPlatform.instance.getPlatformVersion();
  }
}
