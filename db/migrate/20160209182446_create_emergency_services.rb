class CreateEmergencyServices < ActiveRecord::Migration
  def change
    create_table :emergency_services do |t|

    	t.string :type, :null => false
      
    end
  end
end
