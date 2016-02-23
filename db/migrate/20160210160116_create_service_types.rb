class CreateServiceTypes < ActiveRecord::Migration
  def change
    create_table :service_types do |t|

      	t.string :type, :null => false

    end
    add_index(:service_types, :id)
  end
end
