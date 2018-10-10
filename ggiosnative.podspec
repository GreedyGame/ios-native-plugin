
Pod::Spec.new do |s|
  s.name               	  = 'ggiosnative'
  s.version          	  = '2.0.0'
  s.summary          	  = 'This pod will help you in generating more ad revenue by adding greedygame native ios plugin'
  s.swift_version    	  = '4.1'
  s.description    	  = 'A native ios swift library for integrating greedygame ads to your apps. For more info visit'
  s.homepage        	  = 'https://github.com/GreedyGame/ios-native-plugin.git'
  s.license         	  = { :type => 'MIT', :file => 'LICENSE' }
  s.author           	  = { 'niks.nixac@gmail.com' => 'nikhil@greedygame.com' }
  s.source                = { :git => 'https://github.com/GreedyGame/ios-native-plugin.git', :tag => s.version.to_s }
  s.ios.deployment_target = '8.0'
  s.vendored_frameworks   = 'commons.framework', 'imageprocessing.framework', 'ios.framework'
  s.frameworks            = 'commons', 'imageprocessing', 'ios'
end
