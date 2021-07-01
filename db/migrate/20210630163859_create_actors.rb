class CreateActors < ActiveRecord::Migration[6.0]
  def change
    create_table :actors do |t|
      t.string :login
      t.string :url

      t.timestamps
    end
  end
end
