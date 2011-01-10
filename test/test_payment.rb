require 'helper'

class TestPayment < Test::Unit::TestCase
  should "include a module InstanceMethod" do
    assert defined?(Payment::InstanceMethods)
    assert Payment::InstanceMethods.instance_methods.include?("set_attributes")
  end
  
  should "can set_attributes" do
    class InnerT
      include Payment::InstanceMethods
      attr_accessor :attributes
      def initialize(opt)
        set_attributes(opt)
      end
      def get_attr(name)
        return @attributes[name.to_sym]
      end
      @@attributes = [
                      :name,
                      :error_code
                     ]
    end
    t = InnerT.new({:name=>"abcd", :error_code=>98584, :no_attr=>122})

    assert(t.get_attr(:name) == "abcd")
    assert(t.get_attr(:error_code) == 98584)
    assert(t.get_attr(:no_attr).nil?)
    assert(t.attributes.size==2)

  end

  should "include class Bill99 Alipay" do
    assert defined?(Payment::Bill99)
    assert defined?(Payment::Alipay)
  end

end
