class CreateEmergencyServices < ActiveRecord::Migration
  def change
    create_table :emergency_services do |t|

    	t.integer :emergency_service_id, :null => false
    	t.string :name
    	t.string :contact_number1, :default => ""
    	t.string :contact_number2, :default => ""
    	t.string :icon
    	t.string :area, :null => false, :default => ""
        t.decimal :latitude, :precision => 9, :scale => 6, :default => 0.0
        t.decimal :longitude, :precision => 9, :scale => 6, :default => 0.0
    	t.string :address

    	t.timestamps
    end
    add_index(:emergency_services, :emergency_service_id)
  end
end
