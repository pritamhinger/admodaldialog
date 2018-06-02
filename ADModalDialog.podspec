Pod::Spec.new do |s|
  s.name             = 'ADModalDialog'
  s.version          = '0.1.1'
  s.summary          = 'Modal Dialog Control with support for image, title and subheading'
 
  s.description      = <<-DESC
Modal Dialog Control with support for title and  optional subheading and an optional image. 
                       DESC
 
  s.homepage         = 'https://github.com/pritamhinger/admodaldialog'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Pritam Hinger' => 'hinger.pritam@gmail.com' }
  s.source           = { :git => 'https://github.com/pritamhinger/admodaldialog.git', :tag => s.version.to_s }
 
  s.ios.deployment_target = '11.3'
  s.source_files = 'ADModalDialog/*'
 
end