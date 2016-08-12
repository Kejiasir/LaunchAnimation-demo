Pod::Spec.new do |s|
  s.name         = "LaunchAnimation"
  s.version      = "0.1.0"
  s.summary      = "iOS启动动画"
  s.description  = <<-DESC
                  只需要一行代码就能开启简单的启动动画效果
                   DESC
  s.homepage     = "https://github.com/Kejiasir/" 
  s.license      = "MIT" 
  s.author       = { "Arvin" => "yasir86@126.com" } 
  s.platform     = :ios, "7.0" 
  s.source       = { :git => "https://github.com/Kejiasir/LaunchAnimation-demo.git", :tag => "0.1.0" }
  s.source_files = "LaunchAnimation-demo/LaunchAnimation/*.{h,m}" 
  s.requires_arc = true 
end
