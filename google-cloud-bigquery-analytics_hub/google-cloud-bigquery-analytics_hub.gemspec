# -*- ruby -*-
# encoding: utf-8

require File.expand_path("lib/google/cloud/bigquery/analytics_hub/version", __dir__)

Gem::Specification.new do |gem|
  gem.name          = "google-cloud-bigquery-analytics_hub"
  gem.version       = Google::Cloud::Bigquery::AnalyticsHub::VERSION

  gem.authors       = ["Google LLC"]
  gem.email         = "googleapis-packages@google.com"
  gem.description   = "Analytics Hub is a data exchange platform that enables you to share data and insights at scale across organizational boundaries with a robust security and privacy framework. With Analytics Hub, you can discover and access a data library curated by various data providers."
  gem.summary       = "API Client library for the Analytics Hub V1 API"
  gem.homepage      = "https://github.com/googleapis/google-cloud-ruby"
  gem.license       = "Apache-2.0"

  gem.platform      = Gem::Platform::RUBY

  gem.files         = `git ls-files -- lib/*`.split("\n") +
                      ["README.md", "AUTHENTICATION.md", "LICENSE.md", ".yardopts"]
  gem.require_paths = ["lib"]

  gem.required_ruby_version = ">= 2.6"

  gem.add_dependency "google-cloud-bigquery-analytics_hub-v1", ">= 0.5", "< 2.a"
  gem.add_dependency "google-cloud-core", "~> 1.6"

  gem.add_development_dependency "google-style", "~> 1.26.1"
  gem.add_development_dependency "minitest", "~> 5.16"
  gem.add_development_dependency "minitest-focus", "~> 1.1"
  gem.add_development_dependency "minitest-rg", "~> 5.2"
  gem.add_development_dependency "rake", ">= 13.0"
  gem.add_development_dependency "redcarpet", "~> 3.0"
  gem.add_development_dependency "simplecov", "~> 0.9"
  gem.add_development_dependency "yard", "~> 0.9"
end
