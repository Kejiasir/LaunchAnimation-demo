## 这是什么鬼?
*  这是一个简单的启动图动画
*  您只需要一句代码就能使启动图开启一个动画效果
*  暂时有三种效果, 提供一个枚举可任意选择, 后续再增加一些其他的效果

##  要怎么集成?
### 手动添加:<br>
*   1. Clone/DownLoad本项目
*   2. 将Demo中的 LaunchAnimaiton 文件夹Copy到您的工程目录中<br> 

### CocoaPods:<br>
*   1. 在 Podfile 中添加 `pod 'LaunchAnimaiton', '~> 0.1.0'`<br>
*   2. 在终端执行 pod install 或 pod update 命令<br> 

## 它如何使用?
*  如您所见一句代码:
*  在 AppDelegate.m 文件中 `import "LaunchImageView.h"` 头文件即可
```Objective-C
// 切记:在添加前必须先设置window的视图可见并显示
// 即调用:[self.window makeKeyAndVisible],否则不会展示动画效果
[self.window addSubview:[[LaunchImageView alloc]
                             initWithFrame:self.window.bounds
                             animationType:AnimationTypeUpAndDown
                             duration:1.5f]];
```

##License
**LaunchAnimaiton 使用 MIT 许可证，详情见 LICENSE 文件**
