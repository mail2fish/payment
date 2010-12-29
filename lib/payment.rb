# -*- coding: utf-8 -*-
module Payment
  # 支付宝封装类
  # 使用方法：
  # @alipay = Alipay.new( 
  #                     :your_domain=>"www.yourdomain.com", 
  #                     :return_url=>"/payment/receive_from_alipay",
  #                     :notify_url=>"/payment/notify_from_alipay",
  #                     :price=>800
  #                     :out_trade_no=>"20102548235" 
  #                      )
  # @alipay.url_for_alipay
  # @alipay.form_for_alipay
  # @alipay.verify(params)
  # 
  class Alipay
    attr_accessor :your_domain, :gateway, :security_code, :sign_type
    @@attributes = [
                    :service,
                    :partner,
                    :_input_charset,
                    :notify_url,
                    :sign_type,
                    :return_url,
                    :sign,
                    :agent,
                    :discount,
                    :subject,
                    :body,
                    :out_trade_no,
                    :price,
                    :show_url,
                    :quantity,
                    :payment_type,
                    :logistics_type,
                    :logistics_fee,
                    :logistics_payment,
                    :receive_name,
                    :receive_address,
                    :receive_zip,
                    :receive_phone,
                    :receive_mobile,
                    :seller_email,
                    :seller_id,
                    :buyer_email,
                    :buyer_id,
                    :buyer_msg
                   ]
    @@params = [
                :notify_time,
                :notify_type,
                :notify_id,
                :sign_type,
                :sign,
                :trade_no,
                :out_trade_no,
                :subject,
                :body,
                :price,
                :discount,
                :quantity,
                :total_fee,
                :payment_type,
                :use_coupon,
                :coupon_discount,
                :is_total_fee_adjust,
                :trade_status,
                :refund_status,
                :logistics_status,
                :logistics_type,
                :logistics_fee,
                :logistics_payment,
                :receive_name,
                :receive_address,
                :receive_zip,
                :receive_phone,
                :receive_mobile,
                :seller_email,
                :seller_id,
                :buyer_id,
                :buyer_email,
                :gmt_create,
                :gmt_payment,
                :gmt_send_goods,
                :gmt_refund,
                :gmt_close,
                :gmt_logistics_modify
               ]

    @@errors_code = {
      :EXPARTNER_INFO_UNCORRECT => "传入外部商户接口信息不正确",
      :ILLEGAL_SIGN => "签名不正确",
      :ILLEGAL_ARGUMENT => "输入参数有错误",
      :TRADE_BUYER_NOT_MATCH => "TRADE_BUYER_NOT_MATCH",
      :USER_NOT_EXIST => "用户不存在",
      :TRADE_SELLER_NOT_MATCH => "卖家账户与交易中不一致",
      :SELLER_NOT_IN_SPECIFIED_SELLERS => "卖家不在指定的商户限制卖家中"
    }



    def initialize(opt=nil)
      
      
    end

    def form_for_alipay()
    end

    def url_for_alipay
    end

    def verify(params)
    end
    
  end

  # 网银在线封装类
  class Cbank
  end
end
