# -*- encoding: utf-8 -*-
# stub: rqrcode_png 0.1.5 ruby lib

Gem::Specification.new do |s|
  s.name = "rqrcode_png"
  s.version = "0.1.5"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Dan Carper"]
  s.date = "2014-11-01"
  s.description = "Glues rQRCode together with chunky_png"
  s.email = ["djcarper@me.com"]
  s.homepage = ""
  s.licenses = ["MIT"]
  s.rubyforge_project = "rqrcode_png"
  s.rubygems_version = "2.5.1"
  s.summary = "Produces a .png from a given QR Code"

  s.installed_by_version = "2.5.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_runtime_dependency(%q<chunky_png>, [">= 0"])
      s.add_runtime_dependency(%q<rqrcode>, [">= 0"])
    else
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<chunky_png>, [">= 0"])
      s.add_dependency(%q<rqrcode>, [">= 0"])
    end
  else
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<chunky_png>, [">= 0"])
    s.add_dependency(%q<rqrcode>, [">= 0"])
  end
end
