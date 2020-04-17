require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = "ReactNativeMaterialComponents"
  s.version      = package["version"]
  s.summary      = package["description"]
  s.description  = <<-DESC
                  material-components
                   DESC
  s.homepage     = "https://github.com/maitrungduc1410/material-components"
  s.license      = "MIT"
  # s.license    = { :type => "MIT", :file => "FILE_LICENSE" }
  s.authors      = { "Mai Trung Duc" => "maitrungduc1410@gmail.com" }
  s.platforms    = { :ios => "9.0" }
  s.source       = { :git => "https://github.com/maitrungduc1410/material-components.git", :tag => "#{s.version}" }

  s.source_files = "ios/**/*.{h,m,swift}"
  s.requires_arc = true

  s.dependency "React"
  s.dependency "MaterialComponents/Buttons"
  s.dependency "MaterialComponents/Buttons+Theming"

end

