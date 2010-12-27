# -*- coding: utf-8 -*-
module Payment
  # 支付宝封装类
  # 使用方法： Alipay.new(:host=>"www.yourdomain.com")
  class Alipay
    attr_accessor :host, :return_url, :notify_url, :verify_url, :partner_code, :md5_code, :service, :seller_email, :charset
    def initialize()
    end

    def form_for_alipay
    end

    def link_to_alipay
    end

    def verify(params,opt=nil)
      
      if opt[:on_success]
      end
    end
    
  end

  # 网银在线封装类
  class Cbank
  end
end
