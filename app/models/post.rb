class Post < ApplicationRecord

def get_date_formated
    return self.updated_at.strftime("%b-%d-%Y %H:%M:%S").split(" ")[0]
end


def get_content_length 
    return "#{self.content.scan(/\w+/).length} words"
end

def get_content_words
    return "#{self.content.scan(/\w+/).length / 200} min read"
end

end