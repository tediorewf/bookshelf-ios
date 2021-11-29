# Uncomment the next line to define a global platform for your project
platform :ios, '12.0'

def install_core_pods
  pod 'SwiftyJSON'
end

def install_rx_pods
  pod 'RxSwift'
  pod 'RxCocoa'
  pod 'RxDataSources'
  pod 'RxRealm'
  pod 'RxBiBinding'
  pod 'RxSwiftExt'
  pod 'RxReachability'
end

def install_pn_pods
  pod 'RxMVVM', :git => 'https://github.com/JeremySnor/RxMVVM.git'
  pod 'RxAlamofireWrapper'
  pod 'CleanMapper'
  pod 'CleanUseCase'
end

def install_all_pods
  install_core_pods
  install_rx_pods
  install_pn_pods
end

target 'BookShelf' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!

  # Pods for BookShelf
  install_all_pods
end

post_install do |installer|
    installer.pods_project.targets.each do |target|
        target.build_configurations.each do |config|
            config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '12.0'
        end
    end
end

