class CreateTaxiTravels < ActiveRecord::Migration
  def change
    create_table :taxi_travels do |t|

    	t.string :driver_name
    	t.string :uid, :limit => 20, :null => false
    	t.string :owner_name
    	t.string :vehicle_name
    	t.string :vehicle_number
    	t.string :vehicle_type
    	t.string :icon
    	t.string :conatct_number1, :default => ""
    	t.string :conatct_number2, :default => ""
    	t.string :address
      	t.timestamps
    end
  end
end
