#include "include/scrizer/scrizer_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "scrizer_plugin.h"

void ScrizerPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  scrizer::ScrizerPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
