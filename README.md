# Nabto Edge IAM Util for iOS / Swift

This utility component simplifies user pairing and management through the IAM API on Nabto Edge embedded devices

## Installation

Reference the SDK from a `Podfile` in the root directory of your project - and include the `post_install` section as shown:

```
platform :ios, '12.0'

target 'NabtoEdgeIamUtilDemo' do
  pod 'NabtoEdgeIamUtil'

  post_install do |installer|
    installer.pods_project.targets.each do |target|
      target.build_configurations.each do |config|
        config.build_settings['BUILD_LIBRARY_FOR_DISTRIBUTION'] = 'YES'
      end
    end
  end
end
```

The `post_install` hook is mandatory to prevent runtime linker errors (immediate crash with `dyld` not being able to resolve some symbols in other pods that the Nabto Edge IAM Util pod depends on).

## Usage

See the [documentation](https://docs.nabto.com/developer/api-reference/ios-sdk/iam-util/IamUtil.html) to learn how to use the IAM Util to simplify pairing and user management.

Also see the [general intro](https://docs.nabto.com/developer/guides/concepts/iam/intro.html) to Nabto Edge IAM.
