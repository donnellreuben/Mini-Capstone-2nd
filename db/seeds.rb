# Product.create!([
#   {name: "cheetos", price: "2.0", description: "corn flavored puffs with cheese", image_url: "https://images.albertsons-media.com/is/image/ABS/960156582-ECOM?$ng-ecom-pdp-desktop$&defaultImage=Not_Available", quantity: nil},
#   {name: "WNYX Mug", price: "2.0", description: "Get your morning news once you wake up with a cup of joe from... well Joe. He made it with his homemade duct tape", image_url: "https://i.pinimg.com/236x/14/4a/0b/144a0bffe37f29f414e2dae2bd0141cf.jpg", quantity: nil},
#   {name: "Hitchhiker's Guide to the Galaxy", price: "42.0", description: "In many of the more relaxed civilizations on the Outer Eastern Rim of the Galaxy, the Hitch-Hiker's Guide has already supplanted the great Encyclopaedia Galactica as the standard repository of all knowledge and wisdom, for though it has many omissions and contains much that is apocryphal, or at least wildly inaccurate, it scores over the older, more pedestrian work in two important respects. First, it is slightly cheaper; and secondly it has the words DON'T PANIC inscribed in large friendly letters on its cover.", image_url: "http://www.notcot.com/images/guide.gif", quantity: nil},
#   {name: "Lightsaber", price: "270.0", description: "Part laser, part samurai sword, all awesome. The lightsaber is an elegant weapon for a more civilized age, not nearly as clumsy as a blaster", image_url: "http://25.media.tumblr.com/d2456964024018fd930338c099371104/tumblr_n2m73lTx2Q1svn82uo1_400.gif", quantity: nil},
#   {name: "Space Cowboy Laser Gun", price: "170.0", description: "This weapon has no other description than, Shiney!", image_url: "http://cdn.shopify.com/s/files/1/0289/1534/products/MalPistol_MP-1_1756x988_e53f9448-81ec-41de-9369-4cbad64f18f5_1024x1024.jpg?v=1401915776", quantity: nil},
#   {name: "DnD Dice set", price: "57.0", description: "Take down mighty dragons with this timeless set of 20 sided wonders", image_url: "https://s-media-cache-ak0.pinimg.com/736x/9c/15/7b/9c157bea5331463f9c539cbce739a4b8.jpg", quantity: nil},
#   {name: "Sonic Screwdriver", price: "9.0", description: "The Doctor's sciencey magic wand to get out of tight spots. Note: does not work on wood", image_url: "https://sketchfab.com/blogs/community/wp-content/uploads/2020/04/image2-2.jpghttps://dyn0.media.forbiddenplanet.com/products/28577492.jpg", quantity: nil},
#   {name: "Yoda sleeping bag", price: "40.0", description: "For real", image_url: "https://staticdelivery.nexusmods.com/mods/1151/images/12353-0-1461721930.png", quantity: nil},
#   {name: "WNYX Mug", price: "2.0", description: "Get your morning news once you wake up with a cup of joe from... well Joe. He made it with his homemade duct tape", image_url: "https://i.pinimg.com/236x/14/4a/0b/144a0bffe37f29f414e2dae2bd0141cf.jpg", quantity: nil},
#   {name: "blah blah", price: "444.0", description: "it is a regular product", image_url: "https://i.ytimg.com/vi/XCJ37Gr2RFQ/maxresdefault.jpg", quantity: nil},
#   {name: "fork", price: nil, description: nil, image_url: nil, quantity: nil}
# ])







# Product.all.each do |product|
#   product.supplier_id = 3
#   product.save
# end



# products = Product.all

# products.each do |product|
#   if product.image_url
#     image = Image.new(
#       url: product.image_url,
#       product_id: product.id
#     )
#     image.save!
#   end 
# end