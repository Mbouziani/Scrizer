/// The DeviceType enum defines different types of devices based on screen size.
enum DeviceType {
  small(DeviceDimensions.smallMinWidth, DeviceDimensions.smallMaxWidth),
  mobile(DeviceDimensions.mobileMinWidth, DeviceDimensions.mobileMaxWidth),
  tablet(DeviceDimensions.tabletMinWidth, DeviceDimensions.tabletMaxWidth),
  laptop(DeviceDimensions.laptopMinWidth, DeviceDimensions.laptopMaxWidth),
  large(DeviceDimensions.largeMinWidth, DeviceDimensions.largeMaxWidth);

  /// Minimum screen width for this device type.
  final double minWidth;

  /// Maximum screen width for this device type.
  final double maxWidth;

  /// Constructor for creating a DeviceType with specific screen width range.
  const DeviceType(this.minWidth, this.maxWidth);

  /// Detects the device type based on the given screen width.
  ///
  /// Takes the screen width and returns the corresponding [DeviceType].
  ///
  /// Example:
  /// ```dart
  /// DeviceType device = DeviceType.detect(600.0);
  /// ```
  static DeviceType detect(double screenWidth) {
    if (screenWidth < DeviceDimensions.mobileMinWidth) {
      return DeviceType.small;
    } else if (screenWidth < DeviceDimensions.tabletMinWidth) {
      return DeviceType.mobile;
    } else if (screenWidth < DeviceDimensions.laptopMinWidth) {
      return DeviceType.tablet;
    } else if (screenWidth < DeviceDimensions.largeMinWidth) {
      return DeviceType.laptop;
    } else {
      return DeviceType.large;
    }
  }
}

/// Device dimensions and boundaries as constants for responsive layout.
class DeviceDimensions {
  /// The minimum width for small devices (e.g., small screens or phones).
  static const double smallMinWidth = 50.0;

  /// The maximum width for small devices.
  static const double smallMaxWidth = 375.0;

  /// The minimum width for mobile devices (e.g., smartphones).
  static const double mobileMinWidth = 375.0;

  /// The maximum width for mobile devices.
  static const double mobileMaxWidth = 768.0;

  /// The minimum width for tablet devices.
  static const double tabletMinWidth = 768.0;

  /// The maximum width for tablet devices.
  static const double tabletMaxWidth = 1024.0;

  /// The minimum width for laptop devices.
  static const double laptopMinWidth = 1024.0;

  /// The maximum width for laptop devices.
  static const double laptopMaxWidth = 1440.0;

  /// The minimum width for large devices.
  static const double largeMinWidth = 1440.0;

  /// The maximum width for large devices.
  static const double largeMaxWidth = 5000.0;
}
