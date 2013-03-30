require 'spec_helper'

module CcLicenseable
  describe CcLicense do

    let(:license) { CcLicense.create({ version: 3.0, abbreviation: 'BY' }) }

    it "is invalid without a version" do
      license.version = nil
      license.should_not be_valid
    end

    it "is invalid without an abbreviation" do
      license.abbreviation = nil
      license.should_not be_valid
    end

    it "is invalid with non-CC abbreviation" do
      license.abbreviation = 'XX'
      license.should_not be_valid
    end

    context "links" do
      it "links correctly to license deed" do
        license.summary_link.should == "http://creativecommons.org/licenses/by/3.0/deed.en"
      end

      it "links correctly to full legal terms" do
        license.legal_link.should == "http://creativecommons.org/licenses/by/3.0/legalcode"
      end
    end

    context "assets" do
      it "links correctly to medium button" do
        license.med_btn.should == "cc_licenseable/buttons/med/by.svg"
      end

      it "links correctly to small button" do
        license.small_btn.should == "cc_licenseable/buttons/small/by.svg"
      end
    end

    context "I18n" do
      it "has a translatable title" do
        license.title.should == "Attribution"
      end

      it "has a translatable description" do
        license.desc.should == "This license lets others distribute, remix, tweak, and build upon your work, even commercially, as long as they credit you for the original creation. This is the most accommodating of licenses offered. Recommended for maximum dissemination and use of licensed materials."
      end
    end

    context "scopes" do
      # everything licenseable is under copyright law, therefore a work of copyright
      it "#works returns the objects licensed by self" do
      
      end
    end

  end
end
