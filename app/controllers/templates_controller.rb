class TemplatesController < ApplicationController
  before_action :require_user_signed_in

  private

    def template_params
      params.require(:template).permit(:text_en, :text_de, :text_fr, :active)
    end
end

