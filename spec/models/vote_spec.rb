require 'rails_helper'

describe Vote do
   describe "validations" do
     describe "valid validation" do
       it "only allows -1 or 1 as values" do
         @post = Post.create(title: 'post title', body: 'post body must be pretty long with minimum 20 characters.')
         3.times { @post.votes.create(value: 1) }
         2.times { @post.votes.create(value: -1) }
       
         @post.votes.each do |vote|
           expect(vote.value).to eq(1).or(eq(-1))
         end
         
       end
     end
   end
 end 