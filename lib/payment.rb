# -*- coding: utf-8 -*-
module Payment
  # 支付宝封装类
  # 使用方法：
  # @alipay = Alipay.new( 
  #                     :your_domain=>"www.yourdomain.com", 
  #                     :return_url=>"/payment/receive_from_alipay",
  #                     :notify_url=>"/payment/notify_from_alipay",
  #                     :security_code="d41d8cd98f00b204e9800998ecf8427e"
  #                      )
  # @alipay.url_for_alipay(:price=>800.50, :out_trade_no=>"20102548235")
  # @alipay.form_for_alipay(:price=>800.50, :out_trade_no=>"20102548235",
  #                         :submit_text=>"去支付宝支付", :submit_image=>"/images/pay_by_alipay.jpg"
  #                         :target=>"_blank")
  # @alipay.get_order_num(params)
  # @alipay.verify(params,:out_trade_no=>"20102548235", :price=>"800.5")
  # 
  class Alipay
    attr_accessor :your_domain, :gateway, :security_code,  :attributes

    # initialize alipay class
    def initialize(opt=nil)
      raise ":partner, :seller_email, :security_code, those options were required." if opt.blank?
      raise "The option :partner, :seller_email, :security_code was required." unless opt.include?(:partner)
      raise "The option :seller_email was required." unless opt.include?(:seller_email)
      raise "The option :security_code was required." unless opt.include?(:security_code)
      
o
      
      partner = opt[:partner]     
      seller_email = opt[:seller_email]
      security_code = opt[:security_code]
      service = opt[:service] || "create_direct_pay_by_user"
      payment_type = opt[:payment_type] || 1

    end

    # return an url for link to alipay
    def url_for_alipay(opt=nil)
      
    end


    # TODO: pending
    def form_for_alipay(opt=nil)
    end

    # return true or false
    def verify(params)
    end


    @@attributes = [
                    :_input_charset,
                    :agent,
                    :anti_phishing_key,
                    :body,
                    :buyer_account_name,
                    :buyer_email,
                    :buyer_id,
                    :buyer_msg,
                    :credit_card_default_display,
                    :credit_card_pay,
                    :defaultbank,
                    :discount,
                    :enable_paymethod,
                    :error_notify_url,
                    :exter_invoke_ip,
                    :extra_common_param,
                    :logistics_fee,
                    :logistics_payment,
                    :logistics_type,
                    :notify_url,
                    :out_trade_no,
                    :partner,
                    :payment_type,
                    :paymethod,
                    :price,
                    :quantity,
                    :receive_address,
                    :receive_mobile,
                    :receive_name,
                    :receive_phone,
                    :receive_zip,
                    :return_url,
                    :royalty_parameters,
                    :royalty_type,
                    :seller_account_name,
                    :seller_email,
                    :seller_id,
                    :service,
                    :show_url,
                    :sign,
                    :sign_type,
                    :subject,
                    :t_b_pay,
                    :total_fee
                   ]

    @@params = [
                :body,
                :buyer_email,
                :buyer_id,
                :coupon_discount,
                :discount,
                :error_code,
                :extra_common_param,
                :bank_seq_no,
                :gmt_close,
                :gmt_create,
                :gmt_logistics_modify,
                :gmt_payment,
                :gmt_refund,
                :gmt_send_goods,
                :is_total_fee_adjust,
                :logistics_fee,
                :logistics_payment,
                :logistics_status,
                :logistics_type,
                :notify_id,
                :notify_time,
                :notify_type,
                :out_trade_no,
                :payment_type,
                :price,
                :quantity,
                :receive_address,
                :receive_mobile,
                :receive_name,
                :receive_phone,
                :receive_zip,
                :refund_status,
                :seller_email,
                :seller_id,
                :sign,
                :sign_type,
                :subject,
                :total_fee,
                :trade_no,
                :trade_status,
                :use_coupon
               ]

    @@errors_code = {
      :EXPARTNER_INFO_UNCORRECT => "传入外部商户接口信息不正确",
      :ILLEGAL_ARGUMENT => "输入参数有错误",
      :ILLEGAL_SIGN => "签名不正确",
      :SELLER_NOT_IN_SPECIFIED_SELLERS => "卖家不在指定的商户限制卖家中",
      :TRADE_BUYER_NOT_MATCH => "TRADE_BUYER_NOT_MATCH",
      :TRADE_SELLER_NOT_MATCH => "卖家账户与交易中不一致",
      :USER_NOT_EXIST => "用户不存在"
    }


    private 
    
  end

  # 网银在线封装类
  class Cbank
  end

  # 快钱99Bill封装类
  # 使用方法：
  # @bill99 = Bill99.new( 
  #                     :your_domain=>"www.yourdomain.com", 
  #                     :return_url=>"/payment/receive_from_bill99",
  #                     :notify_url=>"/payment/notify_from_bill99",
  #                     :security_code="d41d8cd98f00b204e9800998ecf8427e"
  #                      )
  # @bill99.url_for_bill99(:price=>800.50, :out_trade_no=>"20102548235")
  # @bill99.form_for_bill99(:price=>800.50, :out_trade_no=>"20102548235",
  #                         :submit_text=>"去支付宝支付", :submit_image=>"/images/pay_by_bill99.jpg"
  #                         :target=>"_blank")
  # @bill99.get_order_num(params)
  # @bill99.verify(params,:out_trade_no=>"20102548235", :price=>"800.5")
  class Bill99

    def initialize(opt=nil)
      raise "The option :security_code was required." unless opt.include?(:security_code)
      set_attributes(opt)
    end

    def url_for_bill99
    end
    
    def form_for_bill99
    end

    # * 表示必填项
    @@attributes = [
                    :inputCharset,      # 字符集 固定选择值:1、2、3; 1 代表 UTF-8; 2 代表 GBK; 3 代表 GB2312
                    :bgUrl,             # 服务器接受支付结果的后台地址  需要是绝对地址
                    :version,           # 网关版本 固定值:v2.0 注意为小写字母 *
                    :language,          # 网关页面显示语言种类 固定值:1 1代表中文显示 *
                    :signType,          # 签名类型 固定值:1 1 代表 MD5 加密签名方式 *
                    :merchantAcctId,    # 人民币账号 *
                    :payerName ,        # 支付人姓名 
                    :payerContactType , # 支付人联系方式类型
                    :payerContact,      # 支付人联系方式
                    :orderId,           # 商户订单号 只允许使用字母、数字、- 、_,并以字母或数字开头 每商户提交的订单号,必须在自身账户交易中唯一 *
                    :orderAmount,       # 商户订单金额 以分为单位。比方 10 元,提交时金额应为 1000 *
                    :orderTime,         # 商户订单提 格式为:年[4 位]月[2 位]日[2 位]时[2 位]分[2 位]秒[2位] 例如:20071117020101  * 
                    :productName ,      # 商品名称 
                    :productNum ,       # 商品数量 
                    :productId ,        # 商品代码 
                    :productDesc ,      # 商品描述 
                    :ext1 ,             # 扩展字段 1 
                    :ext2,              # 扩展字段 2
                    :payType,           # 支付方式  *
                    :redoFlag,          # 同一订单禁止重复提交 固定选择值: 1、0 1 代表同一订单号只允许提交 1 次;0 表示同一订单号在没有支付成功的前提下可重复提交多次。默认为 0建议实物购物车结算类商户采用 0;虚拟产品类商户采用 1;
                    :pid,               # 合作伙伴在快钱的用户编号 
                    :signMsg,           # 签名字符串 *
                   ]

    @@params = [
                :merchantAcctId,        # 人民币账号 
                :version,               # 网关版本 固定值:v2.0
                :language,              # 网页显示语言种类
                :signType,              # 签名类型
                :payType,               # 支付方式
                :bankId,                # 银行代码
                :orderId,               # 商户订单号
                :orderTime,             # 商户订单提交时间
                :orderAmount,           # 商户订单金额
                :dealId,                # 快钱交易号
                :bankDealId,            # 银行交易号
                :dealTime,              # 快钱交易时间
                :payAmount,             # 订单实际支付金额
                :fee,                   # 费用
                :ext1,                  # 扩展字段 1
                :ext2,                  # 扩展字段 2
                :payResult,             # 处理结果
                :errCode,               # 错误代码
                :signMsg,               # 签名字符串
               ]


    @@errors_code = {
      "00000" => "未知错误",
      "10001" => "不支持的字符编码格式,系统支持的字符编码格式为 1.UTF-8,2.GBK,3.GB2312",
      "10002" => "不支持的返回类型,系统支持的返回类型为 1.页面返回,2.后台返回,3.同时支持页面和后台返回",
      "10003" => "页面返回地址和后台返回地址不能同时为空,请使用符合 URL 规则的 http 或者https 地址",
      "10004" => "页面返回地址和后台返回地址不能同时为空,请使用符合 URL 规则的 http 或者https 地址",
      "10005" => "不支持的网关接口版本号,目前系统支持的版本号为 v2.00",
      "10006" => "商户号不存在",
      "10007" => "付款方用户名不正确",
      "10008" => "不支持的付款方联系方式,系统支持的联系方式为 1.电子邮件,2.电话.当联系内容不为空时联系方式不能为空.",
      "10009" => "付款方的联系内容不正确,请输入合法的联系地址",
      "10010" => "订单号不正确,系统只支持以字母,数字组合的订单号,最大长度不能超过 30",
      "10011" => "订单金额不正确,请输入以分为单位的金额",
      "10012" => "订单提交时间不正确,请输入以 yyyyMMddhhmmss 格式的时间字符串",
      "10013" => "商品名称不正确",
      "10014" => "商品数量不正确",
      "10015" => "商品 ID 不正确",
      "10016" => "商品的描述不正确",
      "10017" => "扩展参数一不正确",
      "10018" => "扩展参数二不正确",
      "10019" => "指定的支付方式不正确",
      "10020" => "指定的支付服务代码不正确",
      "10021" => "指定的银行 ID 不正确",
      "10022" => "不支持的语言类型,系统支持的语言为 1.中文,2.英文",
      "10023" => "不支持的签名类型,系统支持的签名类型为 1.MD5",
      "10024" => "商户未开通人民币网关",
      "10025" => "商户未开通国际卡人民币网关",
      "10026" => "商户未开通电话支付人民币网关",
      "10027" => "不正确的 pid 值",
      "10028" => "不正确的国际卡支付参数,组合支付方式和支付方式必须为国际卡对应的参数",
      "10029" => "不正确的神州行支付参数,组合支付方式和支付方式必须为神州行支付对应的参数",
      "10030" => "不正确的代理商帐户代码",
      "10031" => "商户未开通代理网关",
      "10032" => "原始交易不存在",
      "10033" => "订单金额不正确,请输入以元为单位的金额,最多允许两位小数",
      "10034" => "手续费金额不正确,请输入以元为单位的金额,最多允许两位小数",
      "10035" => "手续费总额大于或等于订单金额",
      "10036" => "同一订单号禁止重复提交标志不正确",
      "10037" => "对不起,该订单不允许重复提交,请重新下订单提交!",
      "20001" => "订单信息的签名内容不正确",
      "20002" => "商户账号已被冻结",
      "20003" => "商户交易金额已超过限制",
      "20004" => "商户制定的银行直连参数不正确",
      "20005" => "不能使用优惠券",
      "20006" => "商户账户不允许收款",
      "20007" => "账户已注销",
      "20008" => "订单金额小于支付手续费,不能支付",
      "20009" => "商户不允许银行直连,可能商户没有对网关定制或者定制中没有选择银行直连,请联系快钱客服",
      "20010" => "您通过快钱向此商户的支付金额超过支付限额,请联系快钱客服",
      "20011" => "您通过快钱向此商户的支付金额超过单笔订单的支付限额,请联系快钱客服",
      "20012" => "您通过快钱向此商户的支付金额超过单日的支付总限额,请联系快钱客服",
      "20013" => "您通过快钱向此商户的支付金额超过单月的支付总限额,请联系快钱客服",
      "30001" => "银行不可用",
      "30002" => "线下支付不可用",
      "30003" => "电话银行不可用",
      "30004" => "订单已支付成功,请勿重新支付.",
      "30005" => "请填写您的电子邮箱",
      "50001" => "验证码不正确",
      "50002" => "用户不存在",
      "50003" => "用户被冻结",
      "50004" => "登录次数过多,用户已被锁定",
      "50005" => "付款人不能和收款人相同",
      "50006" => "你的操作已超时,请重新提交",
      "50007" => "账户不正确",
      "50008" => "密码不正确",
      "50009" => "余额不足",
      "50010" => "没有付款权限",
      "50011" => "不能向个人会员付款",
      "50012" => "复核错误",
      "50013" => "您的快钱盾已挂失,无法登录.您可以通过取消挂失或更换后再登录",
      "50014" => "您输入的快钱盾数据不正确",
      "50015" => "使用快钱盾遇到未知错误,请联系快钱客服",
      "50016" => "请使用您的默认用户名登录!",
      "50017" => "复核重试次数超过 3 次,您不能重新复核",
      "60001" => "货币种类不正确! 提示 1=> 人民币网关;3=> 预付费卡网关.",
      "60002" => "定单号不能为空,不能超过 50 位长度",
      "60003" => "定单号只能包含数字或字母以及中划线和下划线",
      "60004" => "该笔交易金额格式不正确,必须为整数或者小数",
      "60005" => "该笔交易金额格式不正确,必须为整数",
      "70001" => "您输入的用户不能使用此优惠券",
      "70002" => "您尝试使用优惠错误次数超过 3 次,请与快钱客服联系",
      "70003" => "您验证优惠券的用户错误次数超过 3 次,请与快钱客服联系",
    }

  end

  module InstanceMethods
    
    def set_attributes(opt)
      return  if opt.nil? or opt.empty?
      @attributes ||= {}
      opt.each_pair {|key,v|
        k = key.to_sym
        @attributes[k] = v if self.class.send(:class_variable_get,:@@attributes).include?(k)
      }
      
    end
  end
end
