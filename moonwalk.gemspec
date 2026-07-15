# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "moonwalk"
  spec.version       = "0.3.0.1"
  spec.authors       = ["Abhinav Saxena"]
  spec.email         = ["abhinav061@gmail.com"]

  spec.summary       = "A fast and minimalist Jekyll theme with clean dark mode."
  spec.homepage      = "https://github.com/SunsetWan/moonwalk"
  spec.license       = "MIT"
  spec.required_ruby_version = ">= 3.1"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r!^(assets|_data|_layouts|_includes|_sass|LICENSE|README|_config\.yml)!i) }

  spec.add_runtime_dependency "jekyll", "~> 4.3"
  spec.add_runtime_dependency "jekyll-feed", "~> 0.17"
  spec.add_runtime_dependency "jekyll-sitemap", "~> 1.4"
  spec.add_runtime_dependency "jekyll-seo-tag", "~> 2.8"
  spec.add_runtime_dependency "rouge", "~> 4.2"
  spec.add_runtime_dependency "webrick", "~> 1.8"
end
