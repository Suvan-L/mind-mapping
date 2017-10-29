#!/usr/bin/ruby -w
# -*- doing: UTF-8 -*-

# 单行注释（行尾 or 另启一行）
=begin
    多行注释
    多行注释    
=end

# 初始化函数
BEGIN {
    puts "*************初始化时执行*****************"
}

# 销毁函数
END {
    puts "************销毁时执行*****************"
}

# 打印单行字符（puts-回车换行）
print "当行字符"
puts "单行字符（回车换行）";

# 打印多行字符的方式

print <<EOF
    第一种方式 
    多行字符串
EOF

print <<"EOF"
    第二种方式
    多行字符串
EOF

print <<`EOC`         # 执行命令
    echo hi thereiiii
EOC

print <<"foo", <<"bar"    #堆叠字符串
    I said foo
foo
    哈哈哈
bar

# 字符串打印
name = "suvan"
puts name
puts "字符串拼接：#{name +  ",  ok"}"
puts "转义： 斜线 \\  单引号 \'"

# 算术运算
puts 2**(16)  # 指数 2的16次方
puts "相乘：#{24 * 60  * 60}"
five = 5
six = 6
puts "five * six = #{five *  six}"

# 数组
ary = ["字符串", 10, 3.14234, "English word ", 5 * 5,]
print "*****************ergodic ary start\n"  #遍历数组
ary.each do |i|
    puts i
end
print "*****************end\n"

# 哈希
hsh = colors = {"red" => 0xf00, "green" => 0x0f0, "blue" => 0x00f}
hsh.each do |key, value|
    print key, "is" , value, "\n"
    puts "key = #{key}  , value = #{value} "
end

# 范围类型
(1 .. 100).each do |n|
    print n,'   '
    if n == 100
        print "\n"
    end
end