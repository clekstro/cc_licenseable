module CcLicenseable
  module FormHelper
    class ActionView::Helpers::FormBuilder
      def cc_license_selector
        collection_select(:cc_license_id, CcLicenseable::CcLicense.all, :id, :form_title)
      end
    end
  end
end
