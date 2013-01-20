# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |gem|
  gem.name          = "pdffonts"
  gem.version       = "1.0.0"
  gem.authors       = ["Pete Nicholls"]
  gem.email         = ["pete@metanation.com"]
  gem.summary       = %q{A command-line tool to display fonts embedded inside PDF documents.}
  gem.homepage      = "http://github.com/Aupajo/pdffonts"
  gem.license       = "MIT"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}) { |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency "term-ansicolor"
  gem.add_development_dependency "rake"
end
