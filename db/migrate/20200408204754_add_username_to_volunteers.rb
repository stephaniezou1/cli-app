class AddUsernameToVolunteers < ActiveRecord::Migration[6.0]
  def change
    add_column :volunteers, :username, :string
  end
end
