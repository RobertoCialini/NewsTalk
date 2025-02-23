import UIKit
import Flutter
import GoogleMaps // Import Google Maps here

@main
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    GeneratedPluginRegistrant.register(with: self)

    // Provide your Google Maps API Key here
    GMSServices.provideAPIKey("")

    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
