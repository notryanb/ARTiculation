# def load_pictures
#   Dir.glob("public/img/*.{jpg,JPG}")
# end

get '/' do
  erb :'index', locals: {pictures: load_pictures, tags: Tag.all}
end

# get '/photos/:id/upload' do
#   erb :'photos/upload', locals: { user: User.find_by(id: params[:id]) }
# end

# get '/photos/:id/new' do
#   user = User.find_by(id: params[:id])
#   all_tags = Tag.all
#   erb :'photos/new', locals: {user: user, all_tags: all_tags}
# end

# post '/photos/:id/new' do
#   @user = User.find_by(id: params[:id])

#   # Write file to public/img directory for display
#   File.open('public/img/' + params['file'][:filename], "w") do |f|
#     f.write(params['file'][:tempfile].read)
#   end

#   @pic_to_add = File.open('public/img/' + params['file'][:filename])
#   Photo.create(url: @pic_to_add.path.sub!(/public\//, ''), user: @user)

#   erb :'photos/new', locals: {pictures: load_pictures}
# end


