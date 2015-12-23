class Person < ActiveRecord::Base
  has_secure_password
  validates_uniqueness_of :username
  validates :name, :username, presence: true
  has_many :spoken_quotes, :class_name => "Quote", :foreign_key => :speaker_id,:dependent => :destroy
  has_many :posted_quotes, :class_name => "Quote", :foreign_key => :poster_id, :dependent => :destroy
  has_many :comments, :class_name => "Comment", :foreign_key => :commenter_id, :dependent => :destroy
end
