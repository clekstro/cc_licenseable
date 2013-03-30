class AddCcLicenseToArtworks < ActiveRecord::Migration
  def change
    add_column :artworks, :cc_license_id, :integer
  end
end
