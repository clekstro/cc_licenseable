# This migration comes from cc_licenseable (originally 20130327162320)
class CreateCcLicenseableCcLicenses < ActiveRecord::Migration
  def change
    create_table :cc_licenseable_cc_licenses do |t|
      t.string :abbreviation
      t.string :name
      t.decimal :version
      t.timestamps
    end
  end
end
