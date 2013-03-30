# This migration comes from cc_licenseable (originally 20130329103248)
class AddLicensesToCcLicenseableCcLicences < ActiveRecord::Migration
  def up
    CcLicenseable::CcLicense.find_or_create_by_abbreviation_and_version({ abbreviation: 'BY', version: 3.0 })
    CcLicenseable::CcLicense.find_or_create_by_abbreviation_and_version({ abbreviation: 'BY-SA', version: 3.0 })
    CcLicenseable::CcLicense.find_or_create_by_abbreviation_and_version({ abbreviation: 'BY-ND', version: 3.0 })
    CcLicenseable::CcLicense.find_or_create_by_abbreviation_and_version({ abbreviation: 'BY-NC', version: 3.0 })
    CcLicenseable::CcLicense.find_or_create_by_abbreviation_and_version({ abbreviation: 'BY-NC-SA', version: 3.0 })
    CcLicenseable::CcLicense.find_or_create_by_abbreviation_and_version({ abbreviation: 'BY-NC-ND', version: 3.0 })
  end

  def down
    CcLicense::CcLicense.all.each { |l| l.destroy }
  end

end
