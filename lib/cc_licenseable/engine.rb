module CcLicenseable
  class Engine < ::Rails::Engine
    isolate_namespace CcLicenseable
    config.generators do |g|
      g.test_framework :rspec, :view_specs => false, :helper_specs => false
      g.integration_tool :rspec
    end
    config.to_prepare do
        ApplicationController.helper(FormHelper)
        ApplicationController.helper(AssetHelper)
    end
  end
end
