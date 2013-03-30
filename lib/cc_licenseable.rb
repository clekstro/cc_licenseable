require "cc_licenseable/engine"

module CcLicenseable
  def self.included(base)
    base.extend(ClassMethods)
  end

  module ClassMethods
    def cc_licenseable
      belongs_to :cc_license, class_name: "CcLicenseable::CcLicense"
    end
  end
end

ActiveRecord::Base.send(:include, CcLicenseable)
