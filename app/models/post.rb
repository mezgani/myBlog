# coding: utf-8
require 'hijri'

class Post < ApplicationRecord


def get_date_formated
  return self.updated_at.strftime("%b-%d-%Y %H:%M:%S")
end


def get_content_length 
    return "#{self.content.scan(/\w+/).length} كلمة"
end

def get_content_words
    return "#{self.content.scan(/\w+/).length / 200} دقائق"
end

end
