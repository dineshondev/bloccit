require 'rails_helper'

describe "Visiting profiles" do 

  before do
    @user = FactoryGirl.create(:user)
    @post = Post.create(:post, user: @user)
    @comment = Comment.create(post: @post, user: @user, body: "A Comment")
    allow(@comment).to receive(:send_favorite_emails)
    @comment.save!
  end

  describe "not signed in" do

    it "shows profile" do
      visit user_path(@user)
      expect(current_path).to eq(user_path(@user))

      expect(page).to have_content(@user.name)
      expect(page).to have_content(@post.title)
      expect(page).to have_content(@comment.body)
    end

  end

  describe "user signed in" do

    before {login_as FactoryGirl.create(:user), scope => :user}

    it "show profile" do
      visit user_path(@user)
      expect(current_path).to eq(user_path(@user))

      expect(page).to have_content(@user.name)
      expect(page).to have_content(@post.title)
      expect(page).to have_content(@comment.body)
    end 

  end

  
end