Restaurant.create(name:"Casa Mono", cuisine:"Spanish", neighborhood:"Gramercy", date_of_visit:"8/20/2020")
# Restaurant.create(name:"The Smith", cuisine:"American", neighborhood:"East Village", date_of_visit:"7/14/2020")
# Restaurant.create(name:"Quality Eats", cuisine:"Steakhouse" , neighborhood:"East Village", date_of_visit:"7/21/2020")

Review.create(num_rating:10, comment_rating:"amazing food!", user_id:1, restaurant_id:1)
# num_rating:7, comment_rating:"food was standard service wasn't great"
# num_rating:9, comment_rating:"Go for the steak, it was incredible!"

User.create(first_name:"Kerri", last_name:"OGorman", username:"kerrilynne", password_digest:"1234")