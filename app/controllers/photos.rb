get "/photos/show" do
  userr = User.find_by(id: session[:user_id])
  photo = Photo.find_by(id: params[:id])
  if photo
    erb(:"photos/show", locals: {picture: photo, user: userr})
  else
    [402, "no photo with given id found"]
  end
end


#--------BEGIN RYAN'S CODE

  # TODO: Move this method to photo model
def load_pictures
  Dir.glob("public/img/*.{jpg,JPG}")
end

get '/photos/:id/upload' do
  erb :'photos/upload', locals: { user: User.find_by(id: params[:id]) }
end

get '/photos/:id/new' do
  user = User.find_by(id: params[:id])
  all_tags = Tag.all
  erb :'photos/new', locals: {user: user, all_tags: all_tags}
end

post '/photos/:id/new' do
  user = User.find_by(id: params[:id])
  all_tags = Tag.all

  # Write file to public/img directory for display
  File.open('public/img/' + params['file'][:filename], "w") do |f|
    f.write(params['file'][:tempfile].read)
  end

  @pic_to_add = File.open('public/img/' + params['file'][:filename])
  Photo.create(url: @pic_to_add.path.sub!(/public\//, ''), user: user)

  erb :'photos/show', locals: {pictures: load_pictures, user: user, all_tags: all_tags}
end
#----------END OF RYAN'S CODE