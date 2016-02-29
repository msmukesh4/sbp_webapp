class CreateServiceTypes < ActiveRecord::Migration
  def change
    create_table :service_types do |t|

      	t.string :name, :null => false

    end
  end
end
