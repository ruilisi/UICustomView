UICustomView
=====

UIView to show gradient color and corner radius:

<img src="https://raw.githubusercontent.com/paiyou-network/UICustomView/master/Demo/screenshot/customview1.png" width="300">

### Usage

1. Add `pod 'UICustomView'` in your podfile and run
```
pod install
```
2. Create one UIView and set its class to `UICustomView`
3. Set `startColor`, `firstMiddleColor`, `lastMiddleColor`, `endColor`, `radius`, `topRightRadius`, `bottomRightRadius`, `bottomLeftRadius`, `topLeftRadius`.
 * Default Values:
 ```
startColor: UIColor = UIColor(red: 0.94, green: 0.74, blue: 0.13, alpha: 1)
firstMiddleColor: UIColor = UIColor(red: 0.98, green: 0.22, blue: 0.34, alpha: 1)
lastMiddleColor: UIColor =  UIColor(red: 0.41, green: 0.09, blue: 0.34, alpha: 1)
endColor: UIColor = UIColor(red: 0.07, green: 0.03, blue: 0.25, alpha: 1)
radius: CGFloat = 0.0
topRightRadius: Bool = true
bottomRightRadius: Bool = true
bottomLeftRadius: Bool = true
topLeftRadius: Bool = true
 ```

<img src="https://raw.githubusercontent.com/paiyou-network/UICustomView/master/Demo/screenshot/customview2.png" width="300">

### Examples
* Settings for outer UIView in this image:

<img src="https://raw.githubusercontent.com/paiyou-network/UICustomView/master/Demo/screenshot/customview3.png" width="300">

<img src="https://raw.githubusercontent.com/paiyou-network/UICustomView/master/Demo/screenshot/customview4.png" width="300">


### License
The MIT License (MIT)

Copyright (c) 2018 Paiyou Network

Permission is hereby granted, free of charge, to any person obtaining a copy of
this software and associated documentation files (the "Software"), to deal in
the Software without restriction, including without limitation the rights to
use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
the Software, and to permit persons to whom the Software is furnished to do so,
subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
