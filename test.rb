Encoding.default_internal='utf-8'
Encoding.default_external='utf-8'

require_relative 'lib/sensitive_words'

#载入敏感词列表
SensitiveWords.load_dict(File.expand_path('dictionary/dict1.txt', __dir__))
SensitiveWords.load_dict(File.expand_path('dictionary/dict2.txt', __dir__))

article = "习近平周永暴干康BLOWJOBjeffrey哈哈哈6-4tianwang"

#找出文章中的所有敏感词
words = SensitiveWords.sensitive_words(article)
puts words.inspect   # => ["习近平", "暴干", "BLOWJOB", "6-4tianwang"]

#或者只需要指定数量上限的敏感词
words = SensitiveWords.sensitive_words(article,2)
puts words.inspect   # => ["习近平", "暴干"]
