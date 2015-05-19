
module FileManipulate
  
  #处理?  ,把文件名字中含有？和?的去除掉（但不改变原文件名）
  def self.dealFileName(fname)
    if fname.include?("?") || fname.include?("？")
      return fname.gsub("?","").gsub("？","")
    end
    return fname
  end
  
  #存储文件 path指定存储的位置，及leve设置要保存文件的权限(读4，写2，执行1)
  def self.saveFile(file,path,level)
   level ="wb" if level.empty?
   File.open(path, level) do |of|
         of.write(file.read)         
    end
  end
  
  
    #构建小图片路径
  def self.get_small_img(path)
    strs = path.split(".");
    size = strs[strs.length-1].length
    pre = path[0,path.length-size-1]
    tail = path[path.length-size,path.length];
    return pre + "_small." + tail
  end
  
   
  #构建中图片路径
  def self.get_middle_img(path)
    strs = path.split(".");
    size = strs[strs.length-1].length
    pre = path[0,path.length-size-1]
    tail = path[path.length-size,path.length];
    pre + "_middle." + tail
  end
  
  #自定义在文件名称尾部添加字符串（修改文件名）例如abc.png 修改未abc_d.png
  def self.get_new_file_name(path,name_string)
    strs = path.split(".");
    size = strs[strs.length-1].length
    pre = path[0,path.length-size-1]
    tail = path[path.length-size,path.length];
    pre + name_string + "." + tail
  end
  
  #给文件名添加时间戳，防止重名文件保存到一个位置
  def self.get_time_stamp_file_name(file_name)
    "#{Time.now.strftime("%Y%m%d-%H%M%S")}-#{file_name}"   
  end
  
  #获取文件类型，返回类型字符串(path的值直接为文件名或者带有路径的文件的名都可以得到值)
  def self.get_file_type(path)
    strs = path.split(".");
    file_type = strs[strs.length-1]
  end
  
  
end