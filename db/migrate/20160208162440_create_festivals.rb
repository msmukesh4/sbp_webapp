class CreateFestivals < ActiveRecord::Migration
  def change
    create_table :festivals do |t|

      t.string :festival_name, :limit => 50, :null => false, :default => ""
      t.string :uid, :limit => 20, :null => false, :default => ""
      t.string :festival_icon
      t.string :festival_banner
      t.date :festival_date 
      t.decimal :latitude, :precision => 9, :scale => 6, :default => 0.0
      t.decimal :longitude, :precision => 9, :scale => 6, :default => 0.0
      t.string :details, :default => ""
      t.string :caption, :limit => 100, :default => "" 
      
      t.timestamps
    end
  end
end
