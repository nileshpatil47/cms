class CreateSubjects < ActiveRecord::Migration
  def change
    create_table :subjects do |t|
      t.string :name
      t.string :title
      t.belongs_to :klass
      t.timestamps
    end
  end
end
