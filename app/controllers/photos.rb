get "/photos/:id" do
  userr = User.find_by(id: session[:user_id])
  photo = Photo.find_by(id: params[:id])
  if photo
    erb(:"photos/show", locals: {picture: photo, user: userr})
  else
    [402, "no photo with given id found"]
  end
end