# sensitive_words

检索文章中的敏感词


### Install

```sh
$ gem install sensitive_words
```


### Test code

``` ruby
# -*- coding: utf-8 -*-

require 'sensitive_words'

#首先载入敏感词文件
SensitiveWords.load_dict("#{__dir__}/dictionary/dict1.txt")
SensitiveWords.load_dict("#{__dir__}/dictionary/dict2.txt") #可以载入多次

article = "习近平周永暴干康BLOWJOBjeffrey哈哈哈流氓政府"

#找出文章中的所有敏感词
words = SensitiveWords.sensitive_words(article)
puts words.inspect   # => ["习近平", "暴干", "BLOWJOB", "流氓政府"]

#或者只需要指定数量上限的敏感词
words = SensitiveWords.sensitive_words(article,2)
puts words.inspect   # => ["习近平", "暴干"]
```

### 敏感词文件示例

说明： 纯文本，一行一个

``` plain
习近平
周永康
暴干
BLOWJOB
流氓政府

```


yeah.happy coding:)




