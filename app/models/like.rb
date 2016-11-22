class Like < ActiveRecord::Base
  # user_id: presence, uniqueness in combination with photo
  # photo_id: presence

validates :photo_id, :presence => true
validates :user_id, :uniqueness => { :scope => [:photo_id] }

belongs_to :user
belongs_to :photo
end
