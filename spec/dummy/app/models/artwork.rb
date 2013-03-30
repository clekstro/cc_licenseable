class Artwork < ActiveRecord::Base
  attr_accessible :name, :title, :cc_license_id
  cc_licenseable
end
