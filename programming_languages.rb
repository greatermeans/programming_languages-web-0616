require 'pry'

def reformat_languages(languages)
  new_hash = {}
  languages.each do |style,lang_hash|
    lang_hash.each do |lang,attribute_hash|
      attribute_hash.each do |attribute,value|
        if new_hash[lang].nil?
          new_hash[lang] = {}
        end
        new_hash[lang][:style] ||= []
        new_hash[lang][:style] << style
        if new_hash[lang][attribute].nil?
          new_hash[lang][attribute] = value
        end
      end
    end
  end
  new_hash
end


