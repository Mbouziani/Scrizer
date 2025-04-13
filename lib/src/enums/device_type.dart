enum DeviceType {
  small(DeviceDimensions.smallMinWidth, DeviceDimensions.smallMaxWidth),
  mobile(DeviceDimensions.mobileMinWidth, DeviceDimensions.mobileMaxWidth),
  tablet(DeviceDimensions.tabletMinWidth, DeviceDimensions.tabletMaxWidth),
  laptop(DeviceDimensions.laptopMinWidth, DeviceDimensions.laptopMaxWidth),
  large(DeviceDimensions.largeMinWidth, DeviceDimensions.largeMaxWidth);

  final double minWidth;
  final double maxWidth;
  const DeviceType(this.minWidth, this.maxWidth);

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

// Device type width boundaries as constants.
class DeviceDimensions {
  static const double smallMinWidth = 50.0;
  static const double smallMaxWidth = 375.0;

  static const double mobileMinWidth = 375.0;
  static const double mobileMaxWidth = 768.0;

  static const double tabletMinWidth = 768.0;
  static const double tabletMaxWidth = 1024.0;

  static const double laptopMinWidth = 1024.0;
  static const double laptopMaxWidth = 1440.0;

  static const double largeMinWidth = 1440.0;
  static const double largeMaxWidth = 5000.0;
}
