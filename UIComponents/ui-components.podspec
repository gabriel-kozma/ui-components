#
#  Be sure to run `pod spec lint engine-math.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|
  spec.name         = "ui-components"
  spec.version      = "0.0.1"
	spec.summary      = "UI components for making development easier"
  spec.description  = <<-DESC
  Framework with ui components for making development easier
                   DESC
	spec.homepage     = "https://github.com/gabriel-kozma/ui-components"
  spec.license      = { :type => "MIT", :file => "LICENSE" }
	spec.author       = { "Gabriel Maccori Kozma" => "gabrielmackoz@gmail.com" }
  spec.source       = { :git => "https://github.com/gabriel-kozma/ui-components.git", 
                        :tag => spec.version
                      }
  spec.source_files = 'UIComponents/UIComponents/Sources/**/*.{h,m,swift}'
  spec.public_header_files = 'UIComponents/UIComponents/Sources/Headers/*.{h}'
  spec.requires_arc = true
  spec.ios.deployment_target = '8.0'
end
