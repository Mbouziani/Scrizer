#ifndef FLUTTER_PLUGIN_SCRIZER_PLUGIN_H_
#define FLUTTER_PLUGIN_SCRIZER_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace scrizer {

class ScrizerPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  ScrizerPlugin();

  virtual ~ScrizerPlugin();

  // Disallow copy and assign.
  ScrizerPlugin(const ScrizerPlugin&) = delete;
  ScrizerPlugin& operator=(const ScrizerPlugin&) = delete;

  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace scrizer

#endif  // FLUTTER_PLUGIN_SCRIZER_PLUGIN_H_
