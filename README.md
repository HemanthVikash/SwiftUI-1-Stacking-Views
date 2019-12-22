# Getting Started

- Install Xcode 11.0 or above from [here](https://developer.apple.com/download/release/) (will need Apple ID sign in)
- Make a new project as mentioned [here](https://developer.apple.com/documentation/xcode/creating_an_xcode_project_for_an_app) or just pull this project from github and follow along

# Screenshot

![Screenshot of app](https://github.com/HemanthVikash/SwiftUI-1-Stacking-Views/blob/master/Screenshot%202019-12-22%20at%206.07.17%20AM.png)

# Understanding the Views

## ZStack

This is mainly for overlapping views.

The views Image and Text are overlapped
Image goes in the bottom layer and Text on the top layer
```
ZStack {
    Image("image-name")
    Text("SwiftUI is amazing")
        .font(.largeTitle)
        .background(Color.black)
        .foregroundColor(.white)
}
```

## VStack

This is mainly for Stacking views one below the other.


Image goes at the top and Text on the bottom
```
VStack {
    Image("image-name")
    Text("SwiftUI is amazing")
        .font(.largeTitle)
        .background(Color.black)
        .foregroundColor(.white)
}
```


## HStack

This is mainly for Stacking views side-by-side. 


Image goes on the left and Text on the right
```
HStack {
    Image("image-name")
    Text("SwiftUI is amazing")
        .font(.largeTitle)
        .background(Color.black)
        .foregroundColor(.white)
}
```
