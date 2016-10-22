require 'rbconfig'
# ruby 1.8.7 doesn't define RUBY_ENGINE
ruby_engine = defined?(RUBY_ENGINE) ? RUBY_ENGINE : 'ruby'
ruby_version = RbConfig::CONFIG["ruby_version"]
path = File.expand_path('..', __FILE__)
$:.unshift "#{path}/"
$:.unshift "#{path}/../#{ruby_engine}/#{ruby_version}/gems/chunky_png-1.3.7/lib"
$:.unshift "#{path}/../#{ruby_engine}/#{ruby_version}/gems/rqrcode-0.10.1/lib"
$:.unshift "#{path}/../#{ruby_engine}/#{ruby_version}/gems/rqrcode_png-0.1.5/lib"
