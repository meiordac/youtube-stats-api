class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :provider
      t.string :uid
      t.string :name
      t.string :email
      t.string :oauth_token
      t.datetime :oauth_expires_at
      t.string :first_name
      t.string :last_name
      t.string :picture

      t.timestamps
    end
  end
end
