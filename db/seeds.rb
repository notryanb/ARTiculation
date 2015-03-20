kiran = User.create(email:"kiran@gmail.com",
            password:"123",
            first_name: "Kiran",
            last_name:"C",
            handle: "kirawesome",
            bio: "Awesome 24/7, yo!")

ryan = User.create(email:"ryan@gmail.com",
            password:"123",
            first_name: "Ryan",
            last_name:"B",
            handle: "ryawesome",
            bio: "Awesome 12/7, yo!")

angel = User.create(email:"angel@gmail.com",
            password:"123",
            first_name: "Angel",
            last_name:"B",
            handle: "awesomangel",
            bio: "Whatever")

natalia = User.create(email:"natalia@gmail.com",
            password:"123",
            first_name: "Natalia",
            last_name:"B",
            handle: "natawesome",
            bio: "Awesome 24/7, yo!")

photo1 = Photo.create(url: File.join('public', 'img', '1.jpg'), user: kiran)
photo2 = Photo.create(url: File.join('public', 'img', '2.jpg'), user: ryan)
photo3 = Photo.create(url: File.join('public', 'img', '3.jpg'), user: angel)
photo4 = Photo.create(url: File.join('public', 'img', '4.jpg'), user: natalia)


street = Tag.create(title: "Street art")
street_photo_tag = PhotoTag.create(tag: street, photo: photo1)

nyc = Tag.create(title: "NYC")
nyc_photo_tag = PhotoTag.create(tag: nyc, photo: photo2)


food = Tag.create(title: "FOOOOD")
food_photo_tag = PhotoTag.create(tag: food, photo: photo3)


fashion = Tag.create(title: "Fashion")
fashion_photo_tag = PhotoTag.create(tag: fashion, photo: photo1)


sculpture = Tag.create(title: "Sculpture")
sculpture_photo_tag = PhotoTag.create(tag: sculpture, photo: photo4)


photography = Tag.create(title: "Photography")
photography_photo_tag = PhotoTag.create(tag: photography, photo: photo2)


oldschool = Tag.create(title: "Old School Cool")
oldschool_photo_tag = PhotoTag.create(tag: oldschool, photo: photo4)





