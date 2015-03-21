get "/photos/:id" do
  photo = Photo.find_by(id: params[:id])
  if photo
    erb(:"photos/show", locals: {picture: photo})
  else
    [402, "no photo with given id found"]
  end
end