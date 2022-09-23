Pod::Spec.new do |s|
  s.name         = 'NabtoEdgeIamUtil'
  s.version      = "1.0.0"
  s.summary      = "Nabto 5/Edge IAM Util to Simplify Pairing and User Management"
  s.description  = <<-DESC
This utility component simplifies user pairing and management through the IAM API on Nabto Edge embedded devices.

The Nabto Edge communication platform enables you to establish direct connections from a client to even the most resource constrained devices, regardless of the firewall configuration of each peer - a P2P middleware that supports IoT well.

The platform has been designed from the ground and up with strong security as a focal point. All in all, it enables vendors to create simple, high performant and secure solutions for their Internet connected products with very little effort.

The Nabto Edge platform supersedes the Nabto Micro platform with many new features and capabilities. Read more about Nabto Edge on https://docs.nabto.com
DESC
  s.homepage         = 'https://docs.nabto.com/developer/guides/overview/platform-overview.html'
  s.license      = { :type => 'Commercial', :file => 'NabtoEdgeIamUtil.xcframework/LICENSE' }
  s.source           = { :http => "https://downloads.nabto.com/assets/edge/ios/nabto-iamutil-swift/#{s.version}/NabtoEdgeIamUtil.xcframework.zip"}
  s.readme           = 'https://downloads.nabto.com/assets/edge/ios/nabto-iamutil-swift/#{s.version}/README.md'
  s.author           = { 'nabto' => 'apps@nabto.com' }
  s.vendored_frameworks = 'NabtoEdgeIamUtil.xcframework'
  s.platform = :ios
  s.ios.preserve_paths = 'NabtoEdgeIamUtil.xcframework'
  s.ios.libraries = 'c++', 'stdc++'
  s.ios.deployment_target = '10.2'
  s.swift_version = '5.0'
  s.dependency 'NabtoEdgeClientSwift', '~> 3.0.0'
  s.dependency 'CBORCoding', '~> 1.3.2'
  s.dependency 'Half', '~> 1.3.1'
end
