 require 'random_data'

 5.times do
   User.create!(
   name:     RandomData.random_name,
   email:    RandomData.random_email,
   password: RandomData.random_sentence
   )
 end
 users = User.all

 15.times do
   Topic.create!(
     name:         RandomData.random_sentence,
     description:  RandomData.random_paragraph
   )
 end
 topics = Topic.all
 # Create Posts
 50.times do
   Post.create!(
     user: users.sample,
   	 topic: topics.sample,
     title:  RandomData.random_sentence,
     body:   RandomData.random_paragraph
   )
 end
 posts = Post.all
 20.times do
   SponsoredPost.create!(
     topic: topics.sample,
     title:  RandomData.random_sentence,
     body:   RandomData.random_paragraph,
     price: RandomData.random_number
   )
 end
 sponsored_posts = SponsoredPost.all
 # Create Comments
 100.times do
   Comment.create!(
     post: posts.sample,
     body: RandomData.random_paragraph
   )
 end
 comments = Comments.all
 # Create Questions

 50.times do
 	Question.create!(
 		title: RandomData.random_sentence,
 		body: RandomData.random_paragraph
 	)
 end
 questions = Questions.all

 puts "Seed finished"
 puts "#{User.count} users created"
 puts "#{Topic.count} topics created"
 puts "#{Post.count} posts created"
 puts "#{SponsoredPost.count} sponsored posts created"
 puts "#{Comment.count} comments created"
 puts "#{Question.count} questions created"

 Advertisement.create(title: 'Sample Advertisement' , copy: 'Buy me!' , price: 99.99 )

