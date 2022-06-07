class CreateAuthenticationEngineUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :authentication_engine_users do |t|
      t.string :email

      t.timestamps
    end
  end
end
