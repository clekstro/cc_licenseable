module CcLicenseable
  class CcLicense < ActiveRecord::Base
    attr_accessible :abbreviation, :version

    validates_presence_of :version, :abbreviation
    validates :abbreviation, :inclusion => { :in => %w{ BY BY-SA BY-ND BY-NC BY-NC-SA BY-NC-ND } }

    def title
      I18n.t("cc_licenseable.#{abbr}.title")
    end

    def form_title
      "CC #{abbreviation} (#{version})"
    end

    def desc
      I18n.t("cc_licenseable.#{abbr}.desc")
    end

    # leave links containing url as this might change, so don't extract it yet.
    def summary_link
      "http://creativecommons.org/licenses/#{abbr}/#{version}/deed.#{locale}"
    end

    def legal_link
      "http://creativecommons.org/licenses/#{abbr}/#{version}/legalcode"
    end

    def med_btn
      "cc_licenseable/buttons/med/#{abbr}.svg"
    end

    def small_btn
      "cc_licenseable/buttons/small/#{abbr}.svg"
    end

    def to_s
      form_title
    end

    private

    def locale
      I18n.locale
    end

    def abbr
      abbreviation.downcase
    end
  end
end
