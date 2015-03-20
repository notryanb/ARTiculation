require 'sinatra'

def load_pictures
  Dir.glob("public/img/*.{jpg,JPG}")
end

get '/' do
  erb :'index', locals: {pictures: load_pictures, tags: Tag.all}
end

