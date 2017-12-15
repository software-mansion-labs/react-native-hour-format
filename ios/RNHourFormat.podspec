
Pod::Spec.new do |s|
  s.name         = "RNHourFormat"
  s.version      = "1.1.0"
  s.summary      = "RNHourFormat"
  s.description  = <<-DESC
                  Get time format used in user device
                   DESC
  s.homepage     = ""
  s.license      = "MIT"
  # s.license      = { :type => "MIT", :file => "../LICENSE" }
  s.author             = { "author" => "mironiasty" }
  s.platform     = :ios, "9.0"
  s.source       = { :git => "https://github.com/softwaremansion/react-native-hour-format.git", :tag => "master" }
  s.source_files  = "RNHourFormat/**/*.{h,m}"
  s.requires_arc = true


  s.dependency "React"
  #s.dependency "others"

end

  