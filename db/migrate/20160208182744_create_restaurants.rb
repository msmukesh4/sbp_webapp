class CreateRestaurants < ActiveRecord::Migration
  	def change
    	create_table :restaurants  do |t|

    		t.string :res_name, :null => false, :default => ""
    		t.string :uid, :limit => 20, :null => false, :default => ""
    		t.decimal :rating, :precision => 3, :scale => 2, :default => 5.0
    		t.string :contact_number1
    		t.string :contact_number2
    		t.decimal :latitude, :precision => 9, :scale => 6, :default => 0.0
      		t.decimal :longitude, :precision => 9, :scale => 6, :default => 0.0
    		t.string :res_icon
    		t.string :res_banner
    		t.string :offer, :default => "none"
    		t.string :address, :default => ""
    		t.string :caption, :default => ""
    		t.string :details, :default => ""

      		t.timestamps
    	end
  	end
end
