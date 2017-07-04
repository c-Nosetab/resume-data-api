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


capstone_screenshot = [
                        "https://poeditor.com/public/f/localization_screenshot.png",
                        "https://ps.w.org/appy-hotel-website-connector/assets/screenshot-1.png?rev=1032374",
                        "https://cdn.rsjoomla.com/images/products/screenshots/91.jpg",
                        "https://cdn.mg.co.za/crop/content/images/2016/08/04/africannewsupadtes2_landscape.jpg/1280x720/",
                        "https://lh3.googleusercontent.com/qXgzVbqgqVHoxUAkgnSgPKyJy38P5IuiYZ72QhxdtTVIgaE7XtEP5hEBObBL2kb-WHg=h900",
                        "https://embedwistia-a.akamaihd.net/deliveries/bd5b493f3b0a9e956b3be937b118bb018aa401be.jpg",
                        "https://lh4.ggpht.com/ywofjNI_bQVvhhnwZtezwrQdBeWOs3cd7p6LIPAE29atAq6q_xCGPa1vdwLqyJIifAe1=h900",
                        "http://s3.amazonaws.com/info-mongodb-com/_com_assets/blog/meteor/image03.png",
                        "https://0.s3.envato.com/files/148428961/screenshots/screenshot-4.jpg",
                        "https://d1iiooxwdowqwr.cloudfront.net/pub/wpscreenshots/Screenshot_2013-02-19-09-45-21.png"
                      ]

degrees = ["BM of Music", "BS of Biomechanics", "Computer Science", "Art", "Economics", "Psycology", "Education", "Underwater Basket Weaving", "Engineering", "Nursing", "Law"]

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

Student.all.each do |student|
  count = 0

  3.times do

    Experience.create!(
                        start_date: Time.utc(rand(2002..2004) + count, rand(1..6), rand(1..27)),
                        end_date:   Time.utc(rand(2004..2006) + count, rand(6..12), rand(1..27)),
                        job_title: Faker::Company.profession,
                        company_name: Faker::Company.name,
                        details: Faker::Lorem.paragraph(2),
                        student_id: student.id
      )
    count += 5

  end


  Education.create!(
                    start_date: Time.utc(rand(2000..2007)),
                    end_date: Time.utc(rand(2007...2011)),
                    degree: degrees.pop,
                    university_name: Faker::Educator.university,
                    details: Faker::Lorem.paragraph(2),
                    student_id: student.id
      )

  10.times do
    Skill.create!(
                  skill_name: Faker::Job.key_skill,
                  student_id: student.id
                  )
  end

  Capstone.create!(
                    name: "#{student.first_name}'s Capstone",
                    description: Faker::Lorem.paragraph,
                    url: Faker::Internet.url("#{student.first_name}.com"),
                    screenshot: capstone_screenshot.pop,
                    student_id: student.id
    )


end