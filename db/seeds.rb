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

photo1 = Photo.create(url: File.join('img', '1.jpg'), title: "kiran", description: "Kiran's portrait", user: kiran)
photo2 = Photo.create(url: File.join('img', '2.jpg'), title: "ryan", description: "Ryans's portrait", user: ryan)
photo3 = Photo.create(url: File.join('img', '3.jpg'), title: "angel", description: "Angel's portrait", user: angel)
photo4 = Photo.create(url: File.join('img', '4.jpg'), title: "natalia", description: "Natalia's portrait", user: natalia)
photo5 = Photo.create(url: File.join('img', 'ryan.jpg'), title: "Ryan", description: "Ryan's portrait", user: ryan)
photo6 = Photo.create(url: File.join('img', 'angel.jpg'), title: "Angel", description: "Angel's portrait", user: angel)
photo7 = Photo.create(url: File.join('img', 'natalia.jpg'), title: "Natalia", description: "Natalia's portrait", user: natalia)
photo8 = Photo.create(url: File.join('img', 'kiran.jpg'), title: "Kiran", description: "Kiran's portrait", user: kiran)
photo9 = Photo.create(url: File.join('img', 'lil_peeps.jpg'), title: "The Little Peeps", description: "This is the glorious picture of little peeps", user: natalia)

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

nature = Tag.create(title: "nature")
nature_tag = PhotoTag.create(tag: nature, photo: photo1)

photo10 = Photo.create(url: File.join('img', 'brainstr.jpg'), title: "Brainstorm", description: "This is the glorious picture of little peeps", user: zack)
photo11 = Photo.create(url: File.join('img', 'IMG_3491.jpg'), title: "IMG!", description: "This is the glorious picture of little peeps", user: natalia)
photo12 = Photo.create(url: File.join('img', 'graffiti_alphabet_balboa.jpg'), title: "Balboa", description: "This is the glorious picture of little peeps", user: ryan)

photo13 = Photo.create(url: File.join('img', 'calvin.jpg'), title: "Calvin", description: "This is the glorious picture of little peeps", user: natalia)
photo14 = Photo.create(url: File.join('img', 'sluggo.jpg'), title: "The Little Peeps", description: "This is the glorious picture of little peeps", user: kiran)
photo15 = Photo.create(url: File.join('img', 'sao-paulo-graffiti-villa-magdalena-r-cardeal-arcoverde-frankenstein-top-hat-big-nose-large.jpg'), title: "Frankenstein", description: "This is the glorious picture of little peeps", user: ryan)
photo14 = Photo.create(url: File.join('img', 'small_star_wars_street_art.jpg'), title: "Star Wars", description: "This is the glorious picture of little peeps", user: angel)



weather = Tag.create(title: "weather")
weather_tag = PhotoTag.create(tag: weather, photo: photo1)
weather_tag = PhotoTag.create(tag: weather, photo: photo2)
weather_tag = PhotoTag.create(tag: weather, photo: photo3)
weather_tag = PhotoTag.create(tag: weather, photo: photo4)
weather_tag = PhotoTag.create(tag: weather, photo: photo5)

animal = Tag.create(title: "animal")
animal_tag = PhotoTag.create(tag: animal, photo: photo1)

social = Tag.create(title: "social")
social_tag = PhotoTag.create(tag: social, photo: photo1)

family = Tag.create(title: "family")
family_tag = PhotoTag.create(tag: family, photo: photo1)

art = Tag.create(title: "art")
art_tag = PhotoTag.create(tag: art, photo: photo1)

urban = Tag.create(title: "urban")
urban_tag = PhotoTag.create(tag: urban, photo: photo1)

food = Tag.create(title: "food")
food_tag = PhotoTag.create(tag: food, photo: photo1)

fashion = Tag.create(title: "fashion")
fashion_tag = PhotoTag.create(tag: fashion, photo: photo1)

celebrities = Tag.create(title: "celebrities")
celebrities_tag = PhotoTag.create(tag: celebrities, photo: photo1)

entertainment = Tag.create(title: "entertainment")
entertainment_tag = PhotoTag.create(tag: entertainment, photo: photo1)

electronics = Tag.create(title: "electronics")
electronics_tag = PhotoTag.create(tag: electronics, photo: photo1)

travel = Tag.create(title: "travel")
travel_tag = PhotoTag.create(tag: travel, photo: photo1)

sample14 = Tag.create(title: "sample14")
sample14_tag = PhotoTag.create(tag: sample14, photo: photo2)

sample15 = Tag.create(title: "sample15")
sample15_tag = PhotoTag.create(tag: sample15, photo: photo3)

sample16 = Tag.create(title: "sample16")
sample16_tag = PhotoTag.create(tag: sample16, photo: photo4)

sample17 = Tag.create(title: "sample17")
sample17_tag = PhotoTag.create(tag: sample17, photo: photo5)

sample18 = Tag.create(title: "sample18")
sample18_tag = PhotoTag.create(tag: sample18, photo: photo6)

sample19 = Tag.create(title: "sample19")
sample19_tag = PhotoTag.create(tag: sample19, photo: photo7)

sample20 = Tag.create(title: "sample20")
sample20_tag = PhotoTag.create(tag: sample20, photo: photo8)

sample21 = Tag.create(title: "sample21")
sample21_tag = PhotoTag.create(tag: sample21, photo: photo9)

sample22 = Tag.create(title: "sample22")
sample22_tag = PhotoTag.create(tag: sample22, photo: photo1)

sample23 = Tag.create(title: "sample23")
sample23_tag = PhotoTag.create(tag: sample23, photo: photo2)

sample24 = Tag.create(title: "sample24")
sample24_tag = PhotoTag.create(tag: sample24, photo: photo3)

sample25 = Tag.create(title: "sample25")
sample25_tag = PhotoTag.create(tag: sample25, photo: photo4)

sample26 = Tag.create(title: "sample26")
sample26_tag = PhotoTag.create(tag: sample26, photo: photo5)

sample27 = Tag.create(title: "sample27")
sample27_tag = PhotoTag.create(tag: sample27, photo: photo6)

sample28 = Tag.create(title: "sample28")
sample28_tag = PhotoTag.create(tag: sample28, photo: photo7)

sample29 = Tag.create(title: "sample29")
sample29_tag = PhotoTag.create(tag: sample29, photo: photo8)

sample30 = Tag.create(title: "sample30")
sample30_tag = PhotoTag.create(tag: sample30, photo: photo9)


sample32 = Tag.create(title: "sample32")
sample32_tag = PhotoTag.create(tag: sample32, photo: photo2)

sample33 = Tag.create(title: "sample33")
sample33_tag = PhotoTag.create(tag: sample33, photo: photo3)

sample34 = Tag.create(title: "sample34")
sample34_tag = PhotoTag.create(tag: sample34, photo: photo4)

sample35 = Tag.create(title: "sample35")
sample35_tag = PhotoTag.create(tag: sample35, photo: photo5)

sample36 = Tag.create(title: "sample36")
sample36_tag = PhotoTag.create(tag: sample36, photo: photo6)

sample37 = Tag.create(title: "sample37")
sample37_tag = PhotoTag.create(tag: sample37, photo: photo7)

sample38 = Tag.create(title: "sample38")
sample38_tag = PhotoTag.create(tag: sample38, photo: photo8)

sample39 = Tag.create(title: "sample39")
sample39_tag = PhotoTag.create(tag: sample39, photo: photo9)


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



