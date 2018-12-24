
require 'emoticons.yml'

def load_library(file_path)
lib = {"get_translation" => {}, "get_emoticon" => {} }
YAML.load_file(file_path).each do |meaning, array|
  english, japanese = array
  library["get_emoticon"][english] = japanese
  library["get_translationi"][japanese] = meaning
  end
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end
