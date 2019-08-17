Pod::Spec.new do |s|
  s.name         = "LGLog"
  s.version      = "1.0.2"
  s.summary      = "基于CocoaLumberjack的日志管理工具"

  # 项目主页地址
  s.homepage     = "https://github.com/LYajun/LGLog"
 
  # 许可证
  s.license      = "MIT"
 
  # 作者
  s.author             = { "刘亚军" => "liuyajun1999@icloud.com" }
 

  # 支持平台
  s.platform     = :ios, "8.0"
  s.ios.deployment_target = '8.0'

  # 项目的地址
  s.source       = { 
            :git => "https://github.com/LYajun/LGLog.git", 
            :tag => s.version 
  }

  # 需要包含的源文件
  s.source_files  = "LGLog/LGLog.h"
  

  s.subspec "YJCocoaLumberjack" do |cocoaLumberjack|
    cocoaLumberjack.source_files =  "LGLog/YJCocoaLumberjack/**/*.{h,m}"
  end

  s.subspec "LGLogManager" do |logManager|
    logManager.source_files =  "LGLog/LGLogManager/**/*.{h,m}"
    logManager.dependency "LGLog/YJCocoaLumberjack"
  end


  # 是否支持ARC 
  s.requires_arc = true


end
