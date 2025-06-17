import 'package:flutter_test/flutter_test.dart';
import 'package:medio/medio.dart';
import 'package:medio/medio_platform_interface.dart';
import 'package:medio/medio_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockMedioPlatform
    with MockPlatformInterfaceMixin
    implements MedioPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final MedioPlatform initialPlatform = MedioPlatform.instance;

  test('$MethodChannelMedio is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelMedio>());
  });

  test('getPlatformVersion', () async {
    Medio medioPlugin = Medio();
    MockMedioPlatform fakePlatform = MockMedioPlatform();
    MedioPlatform.instance = fakePlatform;

    expect(await medioPlugin.getPlatformVersion(), '42');
  });
}
