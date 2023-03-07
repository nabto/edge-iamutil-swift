# changes seems to take forever to synchronize to pods 1.8+ CDN, use old
# github approach for immediate retrieval (but slower once synched, so only
# relevant during development)
source 'https://github.com/CocoaPods/Specs.git'

use_frameworks!

platform :ios, '10.2'

target 'NabtoEdgeIamUtil' do
  pod 'CBORCoding'
  pod 'NabtoEdgeClientSwift', '3.0.4'
end

target 'HostForTests' do
  pod 'CBORCoding'
end

target 'NabtoEdgeIamUtilTests' do
  pod 'CBORCoding'
end
