# require 'open-uri'

Restaurant.destroy_all
Restaurant.reset_pk_sequence
Review.destroy_all
Review.reset_pk_sequence
User.destroy_all
User.reset_pk_sequence

Restaurant.create(name:"Casa Mono", cuisine:"Spanish", neighborhood:"Gramercy", date_of_visit:"3/10/2020")
Restaurant.create(name:"Thursday Kitchen", cuisine:"Korean" , neighborhood:"East Village", date_of_visit:"4/4/2020")
Restaurant.create(name:"Cocotte", cuisine:"French" , neighborhood:"SoHo", date_of_visit:"4/24/2020")
Restaurant.create(name:"Bohemian", cuisine:"Japanese" , neighborhood:"NoHo", date_of_visit:"5/6/2020")
Restaurant.create(name:"Ed's Lobster", cuisine:"Seafood" , neighborhood:"SoHo", date_of_visit:"5/26/2020")
Restaurant.create(name:"Supper", cuisine:"Italian" , neighborhood:"East Village", date_of_visit:"6/10/2020")
Restaurant.create(name:"Balthazar", cuisine:"French" , neighborhood:"SoHo", date_of_visit:"3/11/2020")
Restaurant.create(name:"Lil Frankie's", cuisine:"Italian" , neighborhood:"East Village", date_of_visit:"4/8/2020")
Restaurant.create(name:"Momofuku", cuisine:"Noodle Bar" , neighborhood:"East Village", date_of_visit:"5/4/2020")
Restaurant.create(name:"The Clam", cuisine:"Seafood" , neighborhood:"West Village", date_of_visit:"5/24/2020")
Restaurant.create(name:"Del Frisco's", cuisine:"Steakhouse" , neighborhood:"Midtown", date_of_visit:"6/1/2020")
Restaurant.create(name:"Henry Public", cuisine:"American" , neighborhood:"Brooklyn", date_of_visit:"6/15/2020")
Restaurant.create(name:"Village Taverna", cuisine:"Greek" , neighborhood:"Gramercy", date_of_visit:"3/15/2020")
Restaurant.create(name:"Sugar Fish", cuisine:"Sushi" , neighborhood:"Gramercy", date_of_visit:"4/9/2020")
Restaurant.create(name:"Grand Army", cuisine:"Seafood" , neighborhood:"Brooklyn", date_of_visit:"5/5/2020")
Restaurant.create(name:"La Vara", cuisine:"Spanish" , neighborhood:"Brooklyn", date_of_visit:"6/7/2020")
Restaurant.create(name:"Joe's Pizza", cuisine:"Italian" , neighborhood:"Greenwich Village", date_of_visit:"6/20/2020")
Restaurant.create(name:"Union Square Cafe", cuisine:"American" , neighborhood:"Gramercy", date_of_visit:"7/1/2020")
# Restaurant.create(name:"The Smith", cuisine:"American", neighborhood:"East Village", date_of_visit:"6/30/2020")
# Restaurant.create(name:"Quality Eats", cuisine:"Steakhouse" , neighborhood:"East Village", date_of_visit:"7/10/2020", user_id: 2)
# Restaurant.create(name:"Aunt Jakes", cuisine:"Italian" , neighborhood:"Greenwich Village", date_of_visit:"7/16/2020", user_id: 2)

Review.create(num_rating:9.5, comment_rating:"Amazing food all around!", user_id:1, restaurant_id:1, date_of_visit:"3/10/2020")
Review.create(num_rating:8.9, comment_rating:"Such fun food choices! Go for the pouch drinks!", user_id:1, restaurant_id:2, date_of_visit:"4/4/2020")
Review.create(num_rating:8.3, comment_rating:"Super cute atmosphere, brunch is killer here!", user_id:1, restaurant_id:3, date_of_visit:"4/24/2020")
Review.create(num_rating:9.8, comment_rating:"Invite only restaurant, no reservations but worth the wait!", user_id:1, restaurant_id:4, date_of_visit:"5/6/2020")
Review.create(num_rating:8, comment_rating:"Lobster rolls and oysters are amazing!", user_id:1, restaurant_id:5, date_of_visit:"5/26/2020")
Review.create(num_rating:8.6, comment_rating:"Truffle night is everything! Book it now!", user_id:1, restaurant_id:6, date_of_visit:"6/10/2020")
Review.create(num_rating:7, comment_rating:"Great traditional french cuisine", user_id:2, restaurant_id:7, date_of_visit:"3/11/2020")
Review.create(num_rating:9, comment_rating:"Awesome Italian food but the pasta stands out!", user_id:2, restaurant_id:8, date_of_visit:"4/8/2020")
Review.create(num_rating:9.5, comment_rating:"The ramen here is on point!", user_id:2, restaurant_id:9, date_of_visit:"5/4/2020")
Review.create(num_rating:8.8, comment_rating:"All of the dishes are exceptional, salmon tartare is unreal!", user_id:2, restaurant_id:10, date_of_visit:"5/24/2020")
Review.create(num_rating:7, comment_rating:"Your classic steakhouse!", user_id:2, restaurant_id:11, date_of_visit:"6/1/2020")
Review.create(num_rating:9, comment_rating:"Awesome burgers and sandwiches!", user_id:2, restaurant_id:12, date_of_visit:"6/15/2020")
Review.create(num_rating:9.3, comment_rating:"Best Greek food in the city!", user_id:3, restaurant_id:13, date_of_visit:"3/15/2020")
Review.create(num_rating:9.8, comment_rating:"Takes no reservations but the sushi is worth the wait!", user_id:3, restaurant_id:14, date_of_visit:"4/9/2020")
Review.create(num_rating:9.8, comment_rating:"Best raw bar in town", user_id:3, restaurant_id:15, date_of_visit:"5/5/2020")
Review.create(num_rating:9.8, comment_rating:"Authentic Spanish, great for bruch or dinner.", user_id:3, restaurant_id:16, date_of_visit:"6/7/2020")
Review.create(num_rating:9.8, comment_rating:"One of the best places to grab a slice in the city!", user_id:3, restaurant_id:17, date_of_visit:"6/20/2020")
Review.create(num_rating:9.8, comment_rating:"NYC classic- one of the best restuarants around!", user_id:3, restaurant_id:18, date_of_visit:"7/1/2020")
# Review.create(num_rating:8, comment_rating:"Brunch is incredible here!", user_id:11, restaurant_id:3)
# Review.create(num_rating:9, comment_rating:"Go for the steak, it was incredible!", user_id:12, restaurant_id:4)
# Review.create(num_rating:7, comment_rating:"Decent brunch, pasta is the way to go!", user_id:12, restaurant_id:5)

User.create(first_name:"Kerri", last_name:"OGorman", username:"kerri lynne", password:"1234")
User.create(first_name:"Doug", last_name:"Moran", username:"Dougj", password:"kerri")
User.create(first_name:"Leslie", last_name:"Kay", username:"LK", password:"pass")
# # User.create(first_name:"Tom", last_name:"Smith", username:"Tommy", password_digest:"word")
