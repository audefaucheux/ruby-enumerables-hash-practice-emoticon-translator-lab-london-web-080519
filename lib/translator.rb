# require modules here

def load_library(file)
  # code goes here
  require "yaml"
  emoticons = YAML.load_file(file)
  translator = {:"get_meaning" => {}, :"get_emoticon" => {}}
  emoticons.each { |key, value|
    translator[:get_meaning][value[1]] = "test"
  }
  return translator
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end
