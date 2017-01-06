class AddDisplayToTweets < ActiveRecord::Migration[5.0]
  def change
  	add_column :tweets, :display, :text
  end
end
