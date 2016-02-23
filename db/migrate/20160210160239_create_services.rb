class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|

      	t.integer :service_id, :null => false
      	t.string :name
      	t.string :spacialisations          # for coaching this shall contain classes         
      	t.string :uid, :limit => 20, :null => false
      	t.decimal :rating, :precision => 3, :scale => 2, :default => 5.0
      	t.string :icon
      	t.string :contact_number1, :default => ""
      	t.string :contact_number2, :default => ""
      	t.decimal :latitude, :precision => 9, :scale => 6, :default => 0.0
	      t.decimal :longitude, :precision => 9, :scale => 6, :default => 0.0
      	t.string :address

      	t.timestamps
    end
    add_index(:services, :service_id)
  end
end
