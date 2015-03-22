get "/comments" do

end

post "/comments" do
  user=User.find_by(id: session[:user_id])
  "#{params}, #{user.first_name}"
   comment = Comment.new(title: params[:title],
                            content: params[:content],
                            user_id: user.id,
                            photo_id: params[:photo_id],
                            parent_id: params[:parent_id])
   if comment.save
     redirect back
   else
      [402, "you messed up"]
   end
end

put "/comments/:id" do
  comment = Comment.find_by(id: params[:id])
  comment.update_attribute(:title, params[:title])
  comment.update_attribute(:content, params[:content])
  redirect back
end

delete "/comments/:id" do
   comment =Comment.find_by(id: params[:id])
   comment.destroy
   redirect back
end