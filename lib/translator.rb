
require 'yaml'

def load_library(file_path)
lib = {"get_meaning" => {}, "get_emoticon" => {} }
YAML.load_file(file_path).each do |meaning, array|
  english, japanese = array
  lib["get_emoticon"][english] = japanese
  lib["get_meaning"][japanese] = meaning
  end
  lib
end

def get_japanese_emoticon(file_path, emoticon)
  lib = load_library(file_path)
  answer = lib[get_emoticon][emoticon]
  if answer
    answer
  else
    "Sorry, invalid emoticon"
  end
end

def get_english_meaning
  # code goes here
end
