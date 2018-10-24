# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

rico = User.create({name: "Rico"})
vicente = User.create({name: "Vicente"})

thriller = Song.create({title: "Trhiller"})
swimming_pools = Song.create({title: "Swimming Pools"})

nas = Artist.create(name: 'Nas', blurbs: 'Best hip-hop rapper', image: 'https://upload.wikimedia.org/wikipedia/commons/thumb/7/70/Nas-04.jpg/220px-Nas-04.jpg' )
jay = Artist.create(name: 'Jay Z', blurbs: 'Funky lookin hip-hop rapper', image: 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/9c/Jay-Z_%40_Shawn_%27Jay-Z%27_Carter_Foundation_Carnival_%28crop_2%29.jpg/220px-Jay-Z_%40_Shawn_%27Jay-Z%27_Carter_Foundation_Carnival_%28crop_2%29.jpg' )
ye = Artist.create(name: 'Yeezuz', blurbs: 'Coon ass hip-hop rapper', image: 'https://static.independent.co.uk/s3fs-public/thumbnails/image/2018/10/12/08/Kanye-West-White-House.jpg' )
je = Artist.create(name: 'Mick Jenkins', blurbs: 'Under rated Rapper', image: 'https://images.pigeonsandplanes.com/images/c_limit,f_auto,fl_lossy,q_auto,w_1100/yuyafxs3k7jvfmbmhv4v/mick-jenkins-healing' )
bae = Artist.create(name: 'SZA', blurbs: 'Full Snack Singer', image: 'https://www.grammy.com/sites/com/files/styles/image_landscape_hero/public/sza-hero-815296042.jpg?itok=0x9hsuYg' )
badu = Artist.create(name: 'Erykah Badu', blurbs: 'Best Neo Soul Singer...ever', image: 'https://www.billboard.com/files/styles/article_main_image/public/media/erykah-badu-portrait-2000-a-billboard-1548.jpg' )
