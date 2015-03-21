get '/users/:id' do
  @user = User.find(params[:id])
  erb :'users/dashboard'
end

get '/users/:id/photo' do
  photos = Photo.all.where(user_id: params[:id])
  if photos.empty?
    erb(:'users/photos_redirect')
  else
    erb(:'users/show', locals: {my_photos: photos})
  end
end

# get '/users/:id/show/photo_redirect' do

# end

# post '/users/:id/show/photo_redirect' do
#   redirect
# end