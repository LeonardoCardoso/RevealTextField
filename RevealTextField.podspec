Pod::Spec.new do |s|

 s.name = 'RevealTextField'
 s.version = '1.0.3'
 s.license = { :type => "MIT", :file => "LICENSE" }
 s.summary = 'Simple extension to add a reveal button to your boring UITextField'
 s.homepage = 'https://github.com/LeonardoCardoso/RevealTextField'
 s.social_media_url = 'https://twitter.com/leocardz'
 s.authors = { "Leonardo Cardoso" => "contact@leocardz.com" }
 s.source = { :git => "https://github.com/LeonardoCardoso/RevealTextField.git", :tag => s.version.to_s }
 s.platforms     = { :ios => "8.0" }
 s.requires_arc = true
 s.source_files  = "Sources/**/*.swift"
 s.framework  = "Foundation"

end