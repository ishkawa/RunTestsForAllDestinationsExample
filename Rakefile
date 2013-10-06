SCHEME = "Example"
DESTINATIONS = ["name=iPhone,OS=5.0",
                "name=iPhone,OS=6.0",
                "name=iPhone Retina (3.5-inch),OS=5.0",
                "name=iPhone Retina (3.5-inch),OS=6.0",
                "name=iPhone Retina (3.5-inch),OS=7.0",
                "name=iPhone Retina (4-inch),OS=6.0",
                "name=iPhone Retina (4-inch),OS=7.0",
                "name=iPhone Retina (4-inch 64-bit),OS=7.0", ]

task :default => [:clean, :test]
 
desc "clean"
task :clean do
  sh "xcodebuild clean"
end
 
desc "run unit tests"
task :test do
  DESTINATIONS.each do |destination|
    sh "xcodebuild test -scheme #{SCHEME} -destination \"#{destination}\""
  end
end

