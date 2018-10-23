 require 'random_data'

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
 
 # Create Questions

 50.times do
 	Question.create!(
 		title: RandomData.random_sentence,
 		body: RandomData.random_paragraph
 	)
 end


 puts "Seed finished"
 puts "#{Topic.count} topics created"
 puts "#{Post.count} posts created"
 puts "#{SponsoredPost.count} sponsored posts created"
 puts "#{Comment.count} comments created"
 puts "#{Question.count} questions created"

 Advertisement.create(title: 'Sample Advertisement' , copy: 'Buy me!' , price: 99.99 )
