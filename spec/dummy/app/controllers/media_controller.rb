class MediaController < ApplicationController
  def index
    @licenses = CcLicenseable::CcLicense.all
    @icons = %w{ by cc nc-eu nc-jp nc nd pd remix sa sampling.plus sampling share zero }
  end
end
