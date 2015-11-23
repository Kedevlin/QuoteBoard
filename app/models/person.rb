class Person < ActiveRecord::Base
  has_many :spoken_quotes, :class_name => "Quote", :foreign_key => :speaker_id
  has_many :posted_quotes, :class_name => "Quote", :foreign_key => :poster_id
  has_many :comments, :class_name => "Comment", :foreign_key => :commenter_id
end
