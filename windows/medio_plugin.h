#ifndef FLUTTER_PLUGIN_MEDIO_PLUGIN_H_
#define FLUTTER_PLUGIN_MEDIO_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace medio {

class MedioPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  MedioPlugin();

  virtual ~MedioPlugin();

  // Disallow copy and assign.
  MedioPlugin(const MedioPlugin&) = delete;
  MedioPlugin& operator=(const MedioPlugin&) = delete;

  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace medio

#endif  // FLUTTER_PLUGIN_MEDIO_PLUGIN_H_
