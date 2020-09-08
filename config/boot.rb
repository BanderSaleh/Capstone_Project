ENV['BUNDLE_GEMFILE'] ||= File.expand_path('../Gemfile', __dir__)

require 'bundler/setup' # Set up gems listed in the Gemfile.
require_relative "../lib/backport_rails_six_credentials_command"
require 'bootsnap/setup' # Speed up boot time by caching expensive operations.
