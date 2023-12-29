Pod::Spec.new do |s|
  s.name              = "JOSESwift-ionexenergy"
  s.version           = "1.0.1"
  s.license           = "Apache License, Version 2.0"
  s.summary           = "JOSE framework for Swift"
  s.authors           = { "Daniel Egger" => "daniel.egger@airsidemobile.com", "Carol Capek" => "carol.capek@airsidemobile.com", "Christoph Gigi Fuchs" => "christoph.fuchs@airsidemobile.com" }
  s.homepage          = "https://github.com/airsidemobile/JOSESwift"
  s.documentation_url = "https://github.com/airsidemobile/JOSESwift/wiki"
  s.social_media_url  = "https://twitter.com/airsideout"

  s.swift_version = '5.9'
  s.ios.deployment_target = '12.0'
  s.source            = { :git => "https://github.com/bentu-noodoe/JOSESwift-ionexenergy.git", :tag => "#{s.version}" }
  s.source_files      = "JOSESwift/**/*.{h,swift}"
end
