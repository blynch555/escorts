class CreateProfiles < ActiveRecord::Migration
  def up
    create_table :profiles, :forcce => true do |t|
    	      t.integer  :user_id
		      t.string   :first_name
		      t.string   :last_name
		      t.date 	 :birthday
		      t.text     :about_me
		      t.string   :location
		      t.boolean  :is_active,  :default => false
		      t.datetime :last_activity_at
		      t.timestamps
    end
    add_index :profiles, :user_id

      
    end
    def down
    	drop_table :profiles
    	
    end

end
