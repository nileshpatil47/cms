class CreateChapters < ActiveRecord::Migration
  def change
    create_table :chapters do |t|
      t.string :name
      t.string :title
      t.text :description
      t.belongs_to :subject
      t.timestamps
    end
  end
end
