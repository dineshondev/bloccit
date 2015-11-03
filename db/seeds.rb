require 'faker'

#create posts
50.times do

  all_posts = Post.all
  sentence = Faker::Lorem.sentence
  paragraph = Faker::Lorem.paragraph

  if !all_posts.any? { |post| (post[:title] == sentence && post[:body] == paragraph) }
    Post.create!(
      title: sentence,
      body: paragraph
    )
  end
end
posts = Post.all

# Create Comments
100.times do
  Comment.create!(
    post: posts.sample,
    body: Faker::Lorem.paragraph
  )
end

puts "Seed finished"
puts "#{Post.count} post created"
puts "#{Comment.count} comments created"