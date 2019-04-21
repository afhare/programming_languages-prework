languages = {
  :oo => {
    :ruby => {
      :type => "interpreted"
    },
    :javascript => {
      :type => "interpreted"
    },
    :python => {
      :type => "interpreted"
    },
    :java => {
      :type => "compiled"
    }
  },
  :functional => {
    :clojure => {
      :type => "compiled"
    },
    :erlang => {
      :type => "compiled"
    },
    :scala => {
      :type => "compiled"
    },
    :javascript => {
      :type => "interpreted"
    }
 
  }
}

def reformat_languages(languages)
  new_hash = {}
  
  languages.each do |org,language|
    languages[org].each do |language,details|
      new_hash[:language]
      end
      
    languages[org].each do |lanuguage, details|
      details.each do |key, value|
        if key == :type
          new_hash[language] = { :type => value}
        end
      end
    end
  end
  
  languages.each do |style, language|
    style.each do |language, details|
      if new_hash[language] == languages[style][language]
        new_hash[language][:style] << languages[style]
      end
    end
  end
end
