get '/users/:id' do
  @user = User.find(params[:id])
  @user_photos = Photo.all.where(user_id: params[:id])
  erb :'users/dashboard'
end

# get '/users/:id/show/photo_redirect' do

# end

# post '/users/:id/show/photo_redirect' do
#   redirect
# end