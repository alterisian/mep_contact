json.array!(@templates) do |template|
  json.extract! template, :id, :text_en, :text_de, :text_fr, :active
  json.url template_url(template, format: :json)
end
