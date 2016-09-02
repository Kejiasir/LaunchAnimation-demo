Pod::Spec.new do |s|
  s.name         = "LaunchAnimation"
  s.version      = "0.2.0"
  s.summary      = "只需要一行代码就可以使您的项目增加一个启动动画效果"
  s.description  = <<-DESC
                  只需要一行代码就可以使您的项目增加一个启动动画效果,简单快捷,没有任何依赖
                   DESC
  s.homepage     = "https://github.com/Kejiasir/" 
  s.license      = "MIT" 
  s.author       = { "Arvin" => "yasir86@126.com" } 
  s.platform     = :ios, "7.0" 
  s.source       = { :git => "https://github.com/Kejiasir/LaunchAnimation-demo.git", :tag => s.version }
  s.source_files = "LaunchAnimation-demo/LaunchAnimation-demo/LaunchAnimation/*.{h,m}" 
  s.requires_arc = true 
end
