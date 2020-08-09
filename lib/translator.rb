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
  labeled_hash
end

def get_japanese_emoticon(file_path, emoticon)
  # code goes here
  load_library(file_path)
end


def get_english_meaning(file_path, emoticon)
  results = 'empty'# code goes here
  load_library(file_path).each do |meaning, emoticons|
    emoticons.each do |language, inner_value|
      #if language is japanese
      if inner_value == emoticon
        results = meaning
        binding.pry
      end
    end
  end
end
