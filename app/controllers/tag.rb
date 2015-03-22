get '/tags/:id' do
  @thetag = Tag.find_by(id: params[:id])
  @tagphotos = @thetag.photos
  erb :'tags/show'
end