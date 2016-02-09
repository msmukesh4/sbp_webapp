class CreateShops < ActiveRecord::Migration
  def change
    create_table :shops do |t|

    		t.string :shop_name, :limit => 100, :null => false, :default => ""
    		t.string :shop_uid, :limit => 20, :null => false, :default => ""
    		t.string :shop_type
    		t.decimal :latitude, :precision => 9, :scale => 6, :default => 0.0
      	t.decimal :longitude, :precision => 9, :scale => 6, :default => 0.0
      	t.decimal :rating, :precision => 3, :scale => 2, :default => 5.0
    		t.string :shop_banner
    		t.string :shop_icon
    		t.string :owner_name, :default => ""
      	t.string :address, :default => ""
      	t.string :contact_number1
      	t.string :contact_number2
    		t.string :caption, :default => ""
    		t.string :details, :default => ""

      	t.timestamps
    end
  end
end
