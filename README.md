#### 这是什么鬼?
* 这是一个简单的启动图动画
* 您只需要一句代码就能使启动图开启一个动画效果


#### 怎么集成?
* 1 使用CocoaPods, pod 'LaunchAnimaiton', '~> 0.1.0'
* 2 clone代码, 把demo中的LaunchAnimaiton文件夹copy到您的项目中

#### 如何使用?
* 在 AppDelegate.m 文件中 import "LaunchImageView.h"头文件即可
* 使用如下:
```Objective-C
[self.window addSubview:[[LaunchImageView alloc]
                             initWithFrame:self.window.bounds
                             animationType:AnimationTypeUpAndDown
                             duration:1.5f]];
```


