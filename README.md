# FileManipulate

This is a file manipulate library

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'file_manipulate'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install file_manipulate

## Usage

 1.给文件名添加时间戳，防止重名文件保存到一个位置:

 FileManipulate.get_time_stamp_file_name("abc.txt") => "20150520-143758-abc.txt"

 2.构建小图片路径:

 FileManipulate.get_small_img("abc.png") => "abc_small.png"

 3.构建中图片路径：

 FileManipulate.get_middle_img("abc.png") => "abc_moddle.png"


 4.自定义在文件名称尾部添加字符串：

 FileManipulate.get_new_file_name("abc.png","_zhangsan") => "abc_zhangsan.png"


 5.获取文件类型：

 FileManipulate.get_file_type("abc.ddd.jpg") => "jpg"


 6.处理文件名称中带？：

 FileManipulate.dealFileName("a??bc.jpg")  => "abc.jpg"








## Contributing

1. Fork it ( https://github.com/[my-github-username]/file_manipulate/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
