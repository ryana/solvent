# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{solvent}
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Ryan Angilly"]
  s.date = %q{2010-06-23}
  s.description = %q{Simple Ruby library for expiring Varnish caches.
    It currently relies on my own fork of Typhoeus, and that's not available as a gem...
    So this is pretty much unusable.  Just throwing it up here as an example until the
    fixes I need get into Typhoeus::Easy}
  s.email = %q{ryan@angilly.com}
  s.files = [
    "Rakefile",
     "VERSION",
     "lib/solvent.rb",
     "test/test_helper.rb",
     "test/unit/test_helper.rb",
     "test/unit/test_solvent.rb",
     "vcl/varnish.vcl"
  ]
  s.homepage = %q{http://github.com/ryana/solvent}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.6}
  s.summary = %q{Simple Ruby Library for expiring Varnish caches}
  s.test_files = [
    "test/test_helper.rb",
     "test/unit/test_helper.rb",
     "test/unit/test_solvent.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<typhoeus>, ["= 0.1.27"])
      s.add_development_dependency(%q<shoulda>, ["= 2.11.0"])
      s.add_development_dependency(%q<mocha>, ["= 0.9.8"])
    else
      s.add_dependency(%q<typhoeus>, ["= 0.1.27"])
      s.add_dependency(%q<shoulda>, ["= 2.11.0"])
      s.add_dependency(%q<mocha>, ["= 0.9.8"])
    end
  else
    s.add_dependency(%q<typhoeus>, ["= 0.1.27"])
    s.add_dependency(%q<shoulda>, ["= 2.11.0"])
    s.add_dependency(%q<mocha>, ["= 0.9.8"])
  end
end

