# require modules here
require "yaml"
require "pry"

def load_library(file_path)
  # code goes here
  emoticons = YAML.load_file(file_path)
  labeled_hash = {}
  emoticons.each do |key, value|
    # for each key, if it doesnt exist in labeled hash, create it, key value for each.
    labeled_hash[key] = {}
    labeled_hash[key][:english] = value[0]
    labeled_hash[key][:japanese] = value[1]
  end
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end
