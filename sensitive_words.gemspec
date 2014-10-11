# coding: utf-8
$LOAD_PATH.unshift('lib')

version = '0.0.1'

Gem::Specification.new 'sensitive_words',version do |spec|
  spec.authors       = ["Jeffrey"]
  spec.email         = ["jeffrey6052@163.com"]
  spec.description   = "检索文章中的敏感词"
  spec.summary       = "-"
  spec.homepage      = "https://github.com/maymay25/sensitive_words"
  spec.license       = "MIT"

  spec.files         = ['dictionary/dict1.txt',
                        'dictionary/dict2.txt',
                        'lib/sensitive_words.rb',
                        'sensitive_words.gemspec',
                        'test.rb',
                        'README.md']
                        
end
