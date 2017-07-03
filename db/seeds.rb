# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

images = [
          "https://static1.squarespace.com/static/514ffe4ee4b020d11228d65c/t/5282b93ee4b06dd1d2165f58/1384298875652/castle-irvine-headshot-1.jpg",
          "http://prod.static.eagles.clubs.nfl.com/assets/images/imported/PHI/photos/clubimages/2014/04-April/temppg_headshot_outtakes_042314--nfl_mezz_1280_1024.jpg",
          "https://s-media-cache-ak0.pinimg.com/originals/57/3b/c5/573bc58f5c494e671d2b08cec6730336.jpg",

          "http://perdie.com/wp-content/gallery/model-kristen-gylling/Kristen4.jpg",
          "http://static3.businessinsider.com/image/51deb78269bedde47700003c/microsofts-top-execs-all-got-stylish-new-headshots.jpg",
          "http://momoluxphoto.com/img/portfolio/headshot/headshot_02.jpg",

          "http://www.allanjamesphotography.co.uk/wp-content/uploads/photo-gallery/thumb/Child-portrait-headshot-Bridgend-Porthcawl-photographer.jpg",
          "https://cdn20.patchcdn.com/users/223957/20170601/124328/styles/T800x600/public/article_images/dr_knapp_headshot_-_2016-1496335189-3323.jpg",
          "http://static1.businessinsider.com/image/56051435dd08958f038b4610-800-600/jia-jiang-headshot-e1367014780332.jpg",
          "https://assets.rockefellerfoundation.org/app/uploads/20160429190931/Robin-Wright-Headshot-Photo-credit-James-Gillham-for-Netflix11.jpg"
]

10.times do

  first_name = Faker::Name.first_name
  last_name = Faker::Name.last_name

  Student.create!(
                  first_name: first_name,
                  last_name: last_name,
                  email: "#{first_name}#{last_name}@gmail.com",
                  phone: Faker::PhoneNumber.phone_number,
                  short_bio: Faker::Lorem.paragraph,
                  linkedin_url: "www.linkedin.com/in/#{first_name}#{last_name}",
                  twitter_handle: "@#{last_name}123",
                  personal_website_url: "www.#{first_name}#{last_name}.com",
                  online_resume_url: "www.#{last_name}-resume.com",
                  github_url: "github.com/#{first_name}-dhh",
                  photo: images.pop
                  )
end