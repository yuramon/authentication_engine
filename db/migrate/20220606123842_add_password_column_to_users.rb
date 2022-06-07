class AddPasswordColumnToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :authentication_engine_users, :password_digest, :string
  end
end
