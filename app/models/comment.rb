class Comment < ActiveRecord::Base
  belongs_to :quote
  belongs_to :commenter, :class_name => "Person", :foreign_key => :commenter_id
end
