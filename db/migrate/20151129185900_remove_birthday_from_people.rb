class RemoveBirthdayFromPeople < ActiveRecord::Migration
  def change
    remove_column :people, :birthday, :date
  end
end
