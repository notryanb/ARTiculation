def load_pictures
  Dir.glob("public/img/*.{jpg,JPG}")
end

get '/' do
  erb :'index', locals: {pictures: load_pictures, tags: Tag.all}
end

get '/photos/:id/upload' do
  erb :'photos/upload', locals: { user: User.find_by(id: params[:id]) }
end

get '/photos/:id/new' do
  user = User.find_by(id: params[:id])
  erb :'photos/new', locals: {user: user}
end

post '/photos/:id/new' do
  @user = User.find_by(id: params[:id])
  File.open('public/img/' + params['file'][:filename], "w") do |f|
    f.write(params['file'][:tempfile].read)
  end
  erb :'photos/new', locals: {pictures: load_pictures}
end


