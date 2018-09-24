Pod::Spec.new do |s|  
    s.name              = 'GGiOS'
    s.version           = '1.0.0'
    s.summary           = 'A really cool SDK that generates money by showing ads that people love.'
    s.homepage          = 'http://example.com/'

    s.author            = { 'Name' => 'nikhil@greedygame.com' }
    s.license           = { :type => 'Apache-2.0', :file => 'LICENSE' }

    s.platform          = :ios

    s.ios.deployment_target = '8.0'
    s.ios.vendored_frameworks = 'ios.framework'
end  