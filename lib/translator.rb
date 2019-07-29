# require modules here

def load_library(file)
  # code goes here
  require "yaml"
  emoticons = YAML.load_file(file)
  translator = {:"get_meaning" => {}, :"get_emoticon" => {}}
  emoticons.each { |key, value|
    translator[:get_meaning][value[1]] = key
    translator[:get_emoticon][value[0]] = value[1]
  }
  return translator
end

def get_japanese_emoticon(file, emoticons)
  # code goes here
  translator = load_library(file)
  return translator[:get_meaning][emoticons]
end

def get_english_meaning
  # code goes here
end
