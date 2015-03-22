get '/' do
  @allphotos = Photo.all
  @tags = Tag.all
  erb :'index'
end






