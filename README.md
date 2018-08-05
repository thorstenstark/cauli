## Notes
Cauli will hook into the [URL Loading System](https://developer.apple.com/documentation/foundation/url_loading_system) by register a custom [URLProtocol](https://developer.apple.com/documentation/foundation/urlprotocol) and swizzling the [URLSessionConfiguration.default](https://developer.apple.com/documentation/foundation/urlsessionconfiguration/1411560-default) with one, where the [protocolClasses](https://developer.apple.com/documentation/foundation/urlsessionconfiguration/1411050-protocolclasses) contain the custom [URLProtocol](https://developer.apple.com/documentation/foundation/urlprotocol).

Therefore it's recommended to call `Cauli.setup()` as soon as possible, preferred in the [`application:didFinishLaunchingWithOptions:`](https://developer.apple.com/documentation/uikit/uiapplicationdelegate/1622921-application?language=objc) to ensure that all network requests can be intercepted.