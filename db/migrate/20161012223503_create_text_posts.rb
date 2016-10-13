class CreateTextPosts < ActiveRecord::Migration
  def change
    create_table :text_posts do |t|
      t.string :title
      t.string :string
      t.string :description
      t.string :text

      t.timestamps
    end
  end
end
