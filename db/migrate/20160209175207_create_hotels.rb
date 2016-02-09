class CreateHotels < ActiveRecord::Migration
  	def change
    	create_table :hotels do |t|
    	
	    	t.string :hotel_name, :null => false, :default => ""
	    	t.string :hotel_uid, :limit => 20, :null => false, :default => ""
	    	t.decimal :rating, :precision => 3, :scale => 2, :default => 5.0
	    	t.string :contact_number1
	    	t.string :contact_number2
	    	t.decimal :latitude, :precision => 9, :scale => 6, :default => 0.0
	      	t.decimal :longitude, :precision => 9, :scale => 6, :default => 0.0
	    	t.string :hotel_icon
	    	t.string :hotel_banner
	    	t.string :offer, :default => "none"
	    	t.string :address, :default => ""
	    	t.string :caption, :default => ""
	    	t.string :details, :default => ""

	      	t.timestamps
    	end
  	end
end
