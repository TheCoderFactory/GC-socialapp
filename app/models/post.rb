class Post < ActiveRecord::Base
  belongs_to :user

  def self.order_by_reverse_chronological
  	order(created_at: :desc)
  end
end
