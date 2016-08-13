## 这是什么鬼?
*  这是一个简单的启动图动画
*  您只需要一句代码就能使启动图开启一个动画效果

##  怎么集成?
### 手动添加:<br>
*   1.Clone项目, 将Demo中的 LaunchAnimaiton 文件夹Copy到您的工程目录中<br> 

### CocoaPods:<br>
*   1.在 Podfile 中添加 `pod 'LaunchAnimaiton', '~> 0.1.0'`<br>
*   2.执行 pod install 或 pod update<br> 

## 如何使用?
*  在 AppDelegate.m 文件中 `import "LaunchImageView.h"`头文件即可
*  使用如下一句代码:
```Objective-C
// 切记:在添加前必须先设置window的视图可见并显示
// 即调用:[self.window makeKeyAndVisible],否则不会展示动画效果
[self.window addSubview:[[LaunchImageView alloc]
                             initWithFrame:self.window.bounds
                             animationType:AnimationTypeUpAndDown
                             duration:1.5f]];
```

##License
**MIT LICENSE**
