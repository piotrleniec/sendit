class AddFacebookDataToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :name, :string
    add_column :users, :image, :string
    add_column :users, :access_token, :string
    add_column :users, :access_token_expires_at, :datetime
  end
end
