class CreateDoctors < ActiveRecord::Migration
  def change
    create_table :doctors do |t|

    	t.string :doctor_name, :null => false
    	t.string :doctor_uid, :null => false
    	t.string :type, :null => false
    	t.decimal :rating, :precision => 3, :scale => 2, :default => 5.0
	    t.string :contact_number1
	    t.string :contact_number2
	    t.decimal :latitude, :precision => 9, :scale => 6, :default => 0.0
	    t.decimal :longitude, :precision => 9, :scale => 6, :default => 0.0
	    t.string :doctor_icon
	    t.string :doctor_banner
	    t.string :address, :default => ""
	    t.string :caption, :default => ""
	    t.string :details, :default => ""

      	t.timestamps
    end
  end
end
