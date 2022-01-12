class CreateUserApiKeys < ActiveRecord::Migration[7.0]
  def change
    create_table :user_api_keys do |t|
      t.references :user
      t.string :apikey , null: false
      t.timestamps
    end
  end
end
