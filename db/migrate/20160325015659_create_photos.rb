class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
    	t.text :caption
    	t.integer :user_id
    	t.integer :course_id
    	t.integer :lesson_id
      t.timestamps
    end
  end
end
