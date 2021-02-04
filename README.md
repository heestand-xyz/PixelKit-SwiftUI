
# PixelKit with SwiftUI

```swift
import SwiftUI
import PixelKit
```

## Color Triangle

<img src="https://github.com/heestand-xyz/PixelKit-SwiftUI/blob/main/Assets/ColorTriangle.png?raw=true" height=500>

```swift
struct ColorTriangle: View {
    var body: some View {
        LumaColorShiftPIX(hue: 0.5) {
            LumaBlurPIX(radius: 0.25) {
                PolygonPIX()
            } with: {
                GradientPIX()
                    .pixContrast(3.0)
            }
            .pixMultiply(color: .red)
        } with: {
            GradientPIX()
                .pixContrast(3.0)
        }
    }
}
```

## Tilt Shift

<img src="https://github.com/heestand-xyz/PixelKit-SwiftUI/blob/main/Assets/TiltShift.png?raw=true" height=500>

```swift
struct TiltShift: View {
    var body: some View {
        LumaBlurPIX(radius: 0.1) {
            ImagePIX(named: "City")
                .pixTranslate(y: 0.1)
                .pixExtend(.mirror)
                .pixScaleResolution(placement: .fill)
        } with: {
            GradientPIX(direction: .vertical,
                        colorSteps: [
                            ColorStep(0.0, .white),
                            ColorStep(0.5, .black),
                            ColorStep(1.0, .white),
                        ])
        }
    }
}
```

## Video Mask

<img src="https://github.com/heestand-xyz/PixelKit-SwiftUI/blob/main/Assets/VideoMask.png?raw=true" height=500>

```swift
struct VideoMask: View {
    var body: some View {
        VideoPIX(named: "homie_by_beeple.mp4")
            .pixScaleResolution(placement: .fill)
            .pixMask {
                PolygonPIX(radius: 0.35,
                           count: 3,
                           cornerRadius: 0.1)
            }
    }
}
```
