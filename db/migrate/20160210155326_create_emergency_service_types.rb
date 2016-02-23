class CreateEmergencyServiceTypes < ActiveRecord::Migration
  def change
    create_table :emergency_service_types do |t|

    	t.string :type, :null => false
      	
    end
    add_index(:emergency_service_types, :id)
  end
end
