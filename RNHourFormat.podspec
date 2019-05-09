require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name	 = 'RNHourFormat'
  s.summary	 = package['description']
  s.author       = package['author']
  s.version      = package['version']
  s.homepage     = package['homepage'] || 'placeholder'
  s.license      = package['license']
  s.platform     = :ios, "8.0"
  s.source       = { :git => package['repository']['url'] }
  s.source_files = "ios/**/*.{h,m}"

  s.dependency 'React'
end
