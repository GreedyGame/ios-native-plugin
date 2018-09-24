Pod::Spec.new do |s|  
    s.name              = 'ios'
    s.version           = '0.0.5'
    s.summary           = 'A really cool SDK that generates money by showing ads that people love.'
    s.homepage          = 'http://example.com/'

    s.author            = { 'Name' => 'nikhil@greedygame.com' }
    s.license           = { :type => 'Apache-2.0', :file => 'LICENSE' }

    s.platform          = :ios
    s.source            = { :git => 'https://github.com/GreedyGame/ios-native-plugin/frameworks.git', :tag => s.version }

    s.ios.deployment_target = '8.0'
    s.ios.vendored_frameworks = 'GreedyiOSSDK.zip'
end  