class CreateEmergencyServiceTypes < ActiveRecord::Migration
  def change
    create_table :emergency_service_types do |t|

    	t.string :name, :null => false
      	
    end
  end
end
