Pod::Spec.new do |s|
  s.name             = "SAProtocolManager"    #名称
  s.version          = "0.1.0"             #版本号
  s.summary          = "Just Testing."     #简短介绍，下面是详细介绍
  s.description      = <<-DESC
                       Testing Private Podspec.
 
                       * Markdown format.
                       * Don't worry about the indent, we strip it!
                       DESC
  s.homepage         = "https://github.com/sallenhandong/SAProtocolManager"                           #主页,这里要填写可以访问到的地址，不然验证不通过
  s.license          = 'MIT'              #开源协议
  s.author           = { "sallen" => "hanwei5512@126.com" }                   #作者信息
  s.source           = { :git => "https://github.com/sallenhandong/SAProtocolManager.git", :tag => "0.1.0" }      #项目地址，这里不支持ssh的地址，验证不通过，只支持HTTP和HTTPS，最好使用HTTPS
  # s.social_media_url = 'https://twitter.com/<twitter_username>'                       #多媒体介绍地址
 
  s.platform     = :ios, '7.0'            #支持的平台及版本
  s.requires_arc = true                   #是否使用ARC，如果指定具体文件，则具体的问题使用ARC
 
  s.source_files = "SAProtocolManager/**/*.{h,m}"    #代码源文件地址，**/*表示Classes目录及其子目录下所有文件，如果有多个目录下则用逗号分开，如果需要在项目中分组显示，这里也要做相应的设置

  s.frameworks = 'UIKit'                  #所需的framework，多个用逗号隔开

end
