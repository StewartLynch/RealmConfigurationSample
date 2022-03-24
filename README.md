
# Realm Configuration

By default, when you create a new Realm project, it creates a default realm using the name `default.realm` and in iOS, it stores that Realm file in the application;ls documents directory.

If you have many Realm realated projects, when you open Realm Studio, they will all be named the same so you may wish to use a different name when the realm is created.

This project creates a RealmConfiguration class that is instantiated at the application's entry point.

In class initializer requires a string that is used to name the realm when it is first created and assigns it as the default configuration.
It also prints the path to the console so that you will be able to easily get to it to open in in Realm Studio.

As a side note, you can see that the configuration also specifies the location for the realm, indicating that you may wish to modify the class so that you can have a development realm stored in an alternate location if you so choose.

## Acknowledgements

 - [Realm.io](https://realm.io)
 - [Realm Swift SDK](https://github.com/realm/realm-swift.git)
 - [Realm Studio](https://www.mongodb.com/docs/realm/studio/)


## Usage/Examples

```swift
import SwiftUI
@main
struct RealmConfigurationSampleApp: App {
    let configurator = RealmConfigurator(name: "NewName")
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
```


## License

[MIT](https://choosealicense.com/licenses/mit/)


## Demo

![Realm Configurator](Images/Realm%20Configurator.gif)

