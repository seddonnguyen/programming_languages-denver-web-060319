require 'pry'

def reformat_languages(languages)
  # your code here
  new_hash = {}
  languages.each do |type, data|
  	data.each do |lang, attr|
  		if (!new_hash[lang])
  			new_hash[lang] = attr
        new_hash[lang][:style] = [type]
      else
        new_hash[lang][:style] << type
  		end	
  	end
  end
  new_hash
end

