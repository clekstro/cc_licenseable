module CcLicenseable
  module AssetHelper
    def cc_logo
      link_to "http://www.creativecommons.org" do
        image_tag 'cc_licenseable/logos/cc.logo.svg'
      end.html_safe
    end

    def cc_icon(icon)
      image_tag "cc_licenseable/icons/#{icon}.svg"
    end

    def cc_icon_chain(abbr, tag_name=:span, options={class: "icon-chain"})
      inner_html = ""
      abbr.downcase.split('-').each do |abbr|
        inner_html += cc_icon(abbr)
      end
      content_tag(tag_name, options) do
        raw inner_html
      end.html_safe
    end
  end
end
