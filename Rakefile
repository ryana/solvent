begin
  require 'jeweler'
  Jeweler::Tasks.new do |gemspec|
    gemspec.name = "solvent"
    gemspec.summary = "Simple Ruby Library for expiring Varnish caches"
    gemspec.description = "Simple Ruby library for expiring Varnish caches.
    It currently relies on my own fork of Typhoeus, and that's not available as a gem...
    So this is pretty much unusable.  Just throwing it up here as an example until the
    fixes I need get into Typhoeus::Easy"
    gemspec.email = "ryan@angilly.com"
    gemspec.homepage = "http://github.com/ryana/solvent"
    gemspec.authors = ["Ryan Angilly"]

    gemspec.add_dependency 'typhoeus', '0.1.27'
 
    gemspec.add_development_dependency 'shoulda', '2.11.0'
    gemspec.add_development_dependency 'mocha', '0.9.8'
  end
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts "Jeweler not available. Install it with: gem install jeweler"
end
