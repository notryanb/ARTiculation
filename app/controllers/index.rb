get '/' do
  erb :'index', locals: {pictures: load_pictures, tags: Tag.all}
end


