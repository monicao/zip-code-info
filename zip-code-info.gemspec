# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-
# stub: zip-code-info 0.2.1 ruby lib

Gem::Specification.new do |s|
  s.name = "zip-code-info"
  s.version = "0.2.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Monica Olinescu"]
  s.date = "2015-05-05"
  s.description = "The data has been collected from wikipedia and stored in a yml file. This gem does not use an external service."
  s.email = "monica.olinescu@gmail.com"
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.md"
  ]
  s.files = [
    ".document",
    ".rspec",
    "Gemfile",
    "Gemfile.lock",
    "LICENSE.txt",
    "README.md",
    "Rakefile",
    "VERSION",
    "data/data.yml",
    "dev/generate_data.rb",
    "lib/zip-code-info.rb",
    "spec/spec_helper.rb",
    "spec/zip-code-info_spec.rb",
    "zip-code-info.gemspec"
  ]
  s.homepage = "http://github.com/monicao/zip-code-info"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.2.2"
  s.summary = "Looks up the state and city of the Sectional Center Facility for a given zip code."

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>, [">= 0"])
      s.add_development_dependency(%q<jeweler>, ["~> 2.0.1"])
      s.add_development_dependency(%q<rspec>, ["~> 3.2.0"])
      s.add_development_dependency(%q<nokogiri>, [">= 0"])
    else
      s.add_dependency(%q<bundler>, [">= 0"])
      s.add_dependency(%q<jeweler>, ["~> 2.0.1"])
      s.add_dependency(%q<rspec>, ["~> 3.2.0"])
      s.add_dependency(%q<nokogiri>, [">= 0"])
    end
  else
    s.add_dependency(%q<bundler>, [">= 0"])
    s.add_dependency(%q<jeweler>, ["~> 2.0.1"])
    s.add_dependency(%q<rspec>, ["~> 3.2.0"])
    s.add_dependency(%q<nokogiri>, [">= 0"])
  end
end

