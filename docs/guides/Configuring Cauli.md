# Configuring Cauli

To get started Cauli offers a shared instance already setup and ready to use but you can instantiate and configure your own.

## Instantiating Cauli

Please make sure you create your Cauli instance as early as possible, especially before any request is started so Cauli can intercept every request. If you don't want to start Cauli at the beginning just don't call the `run` function. Check the [Architecture](Architecture) for more details.
 
```swift
let configuration = Configuration(
  recordSelector: RecordSelector.max(bytesize: 5 * 1024 * 1024),
  enableShakeGesture: true,
  storageCapacity: .records(50))
let cauli = Cauli([ InspectorFloret() ], configuration: configuration)
```

Please check the [Docs](https://cauli.works/docs/Structs/Configuration.html) for all configuration options.

## Run / Pause Cauli

```swift
cauli.run()
cauli.pause()
```

## Manually Display the Cauli UI

If you don't want to use the shake gesture you can display the Cauli UI manually.

```swift
// Disable the shake gesture using the Configuration
let configuration = Configuration(
  recordSelector: RecordSelector.max(bytesize: 5 * 1024 * 1024),
  enableShakeGesture: false,
  storageCapacity: .records(50))
let cauli = Cauli([ InspectorFloret() ], configuration: configuration)

// Create the Cauli ViewController to display it manually.
// This ViewController expects to be displayed in a navigation stack, as it can
// try to push other ViewControllers to the navigation stack.
let cauliViewController = cauli.viewController()
```
