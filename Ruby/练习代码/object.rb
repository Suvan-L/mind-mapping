# 创建对象调用函数
$global_veriable = 10  #全局变量
class Customer
    @@who = "suvan"  #全局变量
    VAR_HELLO = 100 #常量

    def initialize(id, age)  # 初始化函数
        @cust_id = id #实例变量
        @cust_age = age
    end
    def run()  #正常函数
        puts "Hello Ruby ! #$global_veriable id = #@cust_id  age = #@cust_age "
    end
end

customer = Customer.new("1", "12岁")  #新建对象（默认执行 initialize()）
customer.run() #执行方法
