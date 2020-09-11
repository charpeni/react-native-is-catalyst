require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = "react-native-is-catalyst"
  s.version      = package["version"]
  s.summary      = package["description"]
  s.description  = <<-DESC
                  react-native-is-catalyst
                   DESC
  s.homepage     = "https://github.com/charpeni/react-native-is-catalyst"
  s.license      = "MIT"
  s.authors      = { "Nicolas Charpentier" => "nicolas.charpentier079@gmail.com" }
  s.platforms    = { :ios => "10.0" }
  s.source       = { :git => "https://github.com/charpeni/react-native-is-catalyst.git", :tag => "#{s.version}" }

  s.source_files = "ios/**/*.{h,c,m,swift}"
  s.requires_arc = true

  s.dependency "React"
end

