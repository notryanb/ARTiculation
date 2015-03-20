get '/' do
  erb :index
end

#--------Ryan's Code

def load_pictures
  Dir.glob("public/img/*.{jpg,JPG}")
end

get '/photos/new' do
  # "Get route for photos/ works"
  # erb :'photos/test_display', locals: {pictures: load_pictures}
  erb :'photos/new'
end

post '/photos/new' do
  File.open('public/img/' + params['file'][:filename], "w") do |f|
    f.write(params['file'][:tempfile].read)
  end
  erb :'photos/test_display', locals: {pictures: load_pictures}
end

#-------END OF RYAN'S CODE"


