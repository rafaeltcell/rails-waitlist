class AddUserIdToWidgets < ActiveRecord::Migration

  def change
    add_column :widgets, :user_id, :integer, default: nil
  end

end
