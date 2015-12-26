class Quote < ActiveRecord::Base
  belongs_to :speaker, :class_name => "Person", :foreign_key => :speaker_id
  belongs_to :poster, :class_name => "Person", :foreign_key => :poster_id
  has_many :comments, :dependent => :destroy
  validates :speaker_id, :body, :poster_id, presence: true
end
