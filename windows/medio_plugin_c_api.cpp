#include "include/medio/medio_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "medio_plugin.h"

void MedioPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  medio::MedioPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
