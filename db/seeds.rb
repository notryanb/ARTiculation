kiran = User.create(email:"kiran@gmail.com",
            password:"123",
            first_name: "Kiran",
            last_name:"C",
            url: File.join('img', 'kiran.jpg'),
            handle: "kirawesome",
            bio: "I like to refer to myself as the a Street Art Rockstar, I find pleasure in walking around NYC and treasure hunting street art in different neighbourhoods. I think Street Art in NYC really tells a story about the neighbourhood, I also greatful to be living in the greatest city in the world.")

ryan = User.create(email:"ryan@gmail.com",
            password:"123",
            first_name: "Ryan",
            last_name:"B",
            url: File.join('img', 'ryan.jpg'),
            handle: "ryawesome",
            bio: "Awesome 12/7, yo!")

angel = User.create(email:"angel@gmail.com",
            password:"123",
            first_name: "Angel",
            last_name:"B",
            url: File.join('img', 'angel.jpg'),
            handle: "awesomangel",
            bio: "Whatever")

natalia = User.create(email:"natalia@gmail.com",
            password:"123",
            first_name: "Natalia",
            last_name:"B",
            url: File.join('img', 'natalia.jpg'),
            handle: "natawesome",
            bio: "Awesome 24/7, yo!")

zack = User.create(email: "zack@gmail.com",
                    password: "123",
                    first_name: "Zack",
                    last_name: "Mance",
                    url: File.join('img', 'ryan.jpg'),
                    handle: "Zackawesome",
                    bio: "You know ...")

anonymous = User.create(email: "anonymous@gmail.com",
                    password: "123",
                    first_name: "Anony",
                    last_name: "Mouse",
                    url: File.join('img', 'ryan.jpg'),
                    handle: "anonymous",
                    bio: "You know ...")

photo1 = Photo.create(url: File.join('img', '1.jpg'), user: kiran)
photo2 = Photo.create(url: File.join('img', '2.jpg'), user: ryan)
photo3 = Photo.create(url: File.join('img', '3.jpg'), user: angel)
photo4 = Photo.create(url: File.join('img', '4.jpg'), user: natalia)
photo5 = Photo.create(url: File.join('img', 'ryan.jpg'), user: ryan)
photo6 = Photo.create(url: File.join('img', 'angel.jpg'), user: angel)
photo7 = Photo.create(url: File.join('img', 'natalia.jpg'), user: natalia)
photo8 = Photo.create(url: File.join('img', 'kiran.jpg'), user: kiran)
photo9 = Photo.create(url: File.join('img', 'lil_peeps.jpg'), user: natalia)

street = Tag.create(title: "Street art")
street_photo_tag = PhotoTag.create(tag: street, photo: photo1)

nyc = Tag.create(title: "NYC")
nyc_photo_tag = PhotoTag.create(tag: nyc, photo: photo2)


food = Tag.create(title: "FOOOOD")
food_photo_tag = PhotoTag.create(tag: food, photo: photo3)


fashion = Tag.create(title: "Fashion")
fashion_photo_tag = PhotoTag.create(tag: fashion, photo: photo1)
fashion_photo_tag = PhotoTag.create(tag: fashion, photo: photo9)

sculpture = Tag.create(title: "Sculpture")
sculpture_photo_tag = PhotoTag.create(tag: sculpture, photo: photo4)


photography = Tag.create(title: "Photography")
photography_photo_tag = PhotoTag.create(tag: photography, photo: photo5)
photography_photo_tag = PhotoTag.create(tag: photography, photo: photo6)
photography_photo_tag = PhotoTag.create(tag: photography, photo: photo7)
photography_photo_tag = PhotoTag.create(tag: photography, photo: photo8)


oldschool = Tag.create(title: "Old School Cool")
oldschool_photo_tag = PhotoTag.create(tag: oldschool, photo: photo4)


comment1=Comment.create(title: "Ryan's comment",
                        content: "Wow, this photo rocks!!!! BTW, sealions rock :)))",
                        photo_id: 2,
                        user_id: 3)

comment2 =Comment.create(title: "Kiran's comment",
                         content: "Hey, cute photo! BTW, how do you like my beard?!!",
                         photo_id: 3,
                         user_id: 1)

comment3 =Comment.create(title: "Natalia's comment",
                         content: "Loving the photo!!! BTW, what I just said ?!!",
                         photo_id: 1,
                         user_id: 4)

comment4 = Comment.create(title: "Zack's comment",
                          content: "HEy Zings, cool project!!! BTW, everything is awesooome!!!!",
                          photo_id: 4,
                          user_id: 5)



