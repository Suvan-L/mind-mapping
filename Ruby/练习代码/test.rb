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

# 范围类型(.. 包含结束，...不包含结束)
(1 .. 100).each do |n|   # 循环语句
    print n,'   '
    if n == 100
        print "\n"
    end
end

# 变量
=begin
$全局
@@类
@实例
大写字母开头 常数

伪变量
self 当前方法的接收器对象 
true，false，nil（代表 undefined值）
_FILE_  当前源文件名称
_LINE_ 当前行号
=end

# 条件判断
x = 5
if x > 2
    puts "x（x = #x）大于2"
elsif x <2
    puts "asfdfasf"
else 
    puts "不知道x" 
end

puts "满足条件才执行左边" if x==5

unless x==4
    puts "条件为假才执行"
else
end

$age = 8
case $age
    when 0 .. 2
        puts "婴儿"
    when 0 ... 8 
        puts  "小屁孩"
    else 
        puts "有点长大了"
end

foo = false
bar = true
quu = false
case 
when foo then puts "foo is true"
when bar then puts "bar is true"
when quu then puts "quu is true"
end


# 循环
$i = 1
$num = 100
while $i  <= $num do
    puts "循环语句中 i = #$i"
    $i += 1
end

begin
    puts "总会进行第一次循环 i = #$i"
    $i += 1
end while $i < $num


until $i  < $num do
    puts "为假时执行"
    $num += 1
end

begin
    puts "总执行依次，假时执行"
    $i += 1
end until $i > $num

for i in 0  ... 5
 # retry if i > 2 满足条件的话，从头开始循环
 puts "循环5此"
end

# 上述循环等价于
(0 ... 5).each do | i |
        puts "等价循环5此"
        if i == 2
            puts "跳一下"
            next
       elsif i == 4 
          # redo 可重新开始循环
            break
        end
end
