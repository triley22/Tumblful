class AddForeignKeysToModels < ActiveRecord::Migration
  def change
    change_table :image_links do |t|
      t.integer :user_id, :index => true
    end
    change_table :text_posts do |t|
      t.integer :user_id, :index => true
    end
    change_table :article_links do |t|
      t.integer :user_id, :index => true
    end
  end
end
