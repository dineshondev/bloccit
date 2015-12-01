class Post < ActiveRecord::Base
  has_many :comments
  belongs_to :user

  def self.ordered_by_title 
    order('title ASC')
  end

  def self.ordered_by_reverse_created_at 
    order('created_at DESC')
  end

end
