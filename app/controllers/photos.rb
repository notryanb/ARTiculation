post "/photos/:id/add_tag" do
  tag=Tag.find_by(title: params[:title])
  picture=Photo.find_by(id: params[:picture_id])
  picture.tags << tag
  redirect back
end

get "/photos/:id/remove_tag" do
   tag=Tag.find_by(id: params[:tag_id])
   picture=Photo.find_by(id: params[:picture_id])
   picture.tags.delete(tag)
   redirect back
   # "#{tag.to_json}, #{picture.to_json}"
end


get "/photos/:id" do
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
  erb :'photos/upload', locals: { user: User.find_by(id: session[:user_id]) }
end

get '/photos/:id/new' do
  user = User.find_by(id: session[:user_id])
  all_tags = Tag.all
  erb :'photos/new', locals: {user: user, all_tags: all_tags}
end

post '/photos/:id/new' do
  user = User.find_by(id: session[:user_id])
  external_url = params[:url]
  title = params[:title]
  description = params[:description]

  if external_url != nil
    Photo.create(url: external_url, user: user)
  else
    p "this shouldn't be printing with an external URL"
    # Write file to public/img directory for display
    File.open('public/img/' + params['file'][:filename], "w") do |f|
      f.write(params['file'][:tempfile].read)
    end

    #  Get path from server once upload and create picture with correct server path
    @pic_to_add = File.open('public/img/' + params['file'][:filename])
    Photo.create(url: @pic_to_add.path.sub!(/public\//, 'http://localhost:9393/'), 
                  title: title, 
                  description: description, 
                  user: user)
  end

  erb :'photos/new', locals: {user: user, all_tags: Tag.all}
end

post '/photos/:id/confirm' do
  user = User.find_by(id: session[:user_id])
  user.photos.last.tags << Tag.find_by_title(params[:title])

  erb :'photos/confirm', locals:{ user: user }
end
#----------END OF RYAN'S CODE
