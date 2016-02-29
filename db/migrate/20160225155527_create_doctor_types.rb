class CreateDoctorTypes < ActiveRecord::Migration
  def change
    create_table :doctor_types do |t|

      t.string :name, :null => false

    end
  end
end
