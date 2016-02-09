class CreateTouristDestinations < ActiveRecord::Migration
  	def change
    	create_table :tourist_destinations do |t|

    		t.string :place_name, :null => false
    		t.string :place_uid, :null => false
    		t.decimal :rating, :precision => 3, :scale => 2, :default => 5.0
	    	t.string :contact_number1
	    	t.string :contact_number2
	    	t.decimal :latitude, :precision => 9, :scale => 6, :default => 0.0
	      	t.decimal :longitude, :precision => 9, :scale => 6, :default => 0.0
	      	t.string :place_icon
	      	t.string :banner
	      	t.string :caption, :default => ""
	      	t.string :details, :default => "" # what not to miss 

      		t.timestamps
    	end
  	end
end
