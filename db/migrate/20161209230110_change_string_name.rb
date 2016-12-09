class ChangeStringName < ActiveRecord::Migration
  def change
  	rename_column :text_posts, :string, :url
  end
end
