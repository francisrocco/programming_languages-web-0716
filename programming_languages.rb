def reformat_languages(languages)
  new_languages = {}
  languages.each do |styles, language_list|
    language_list.each do |language, type_hash|
      type_hash.each do |type, string|
        new_languages[language] = { } unless new_languages.has_key?(language)
        new_languages[language][:type] = string
        new_languages[language][:style] = [] unless new_languages[language].has_key?(:style)
        new_languages[language][:style] << styles
      end
    end
  end
  new_languages
end
