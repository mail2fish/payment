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
    attr_accessor :your_domain, :gateway, :security_code, :sign_type
    @@attributes = [
                    :_input_charset,
                    :agent,
                    :anti_phishing_key,
                    :body,
                    :buyer_account_name
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
                :gmt_logistics_modify
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


    # 
    def initialize(opt=nil)
      raise ":partner, :seller_email, :security_code, those options were required." if opt.blank?
      raise "The option :partner, :seller_email, :security_code was required." unless opt.include?(:partner)
      raise "The option :seller_email was required." unless opt.include?(:seller_email)
      raise "The option :security_code was required." unless opt.include?(:security_code)
      partner = opt[:partner]
      seller_email = opt[:seller_email]
      security_code = opt[:security_code]
      service = opt[:service] || "create_direct_pay_by_user"
      payment_type = opt[:payment_type] || 1
    end

    # TODO: pending
    def form_for_alipay(opt=nil)
    end

    def url_for_alipay(opt=nil)
    end

    # return true or false
    def verify(params)
    end
    
  end

  # 网银在线封装类
  class Cbank
  end
end
