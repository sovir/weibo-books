class CreateUsers < ActiveRecord::Migration
	defself.up
		create_table:users do|t|
		t.column:uid,:int,:null=>false
		t.column:screen_name,:string
		t.column:access_token,:string:null=>false
		t.column:remember_token,:string
		t.timestamps
		end
	end
	defself.down
		drop_table:users
	end
end
