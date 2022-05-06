class CreateLikes < ActiveRecord::Migration[6.1]
  def change
    create_table :likes do |t|
      t.belongs_to :likeable, polymorphic: true
      t.timestamps
    end
    # TODO: add "unique: true" once we add user_id to models
    add_index :likes, [:likeable_id, :likeable_type]
  end
end
