class TemplatesController < InheritedResources::Base

  private

    def template_params
      params.require(:template).permit(:text_en, :text_de, :text_fr, :active)
    end
end

