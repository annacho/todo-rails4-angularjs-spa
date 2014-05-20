class CreateTaskLists < ActiveRecord::Migration
  def change
    create_table :task_lists, force: true do |t|
     	t.integer  "owner_id"
	    t.datetime "created_at"
	    t.datetime "updated_at"
	    t.string   "name"
    end
    
	  add_index "task_lists", ["owner_id"], name: "index_task_lists_on_owner_id", using: :btree

	  create_table "tasks", force: true do |t|
	    t.string   "description",                 null: false
	    t.integer  "priority"
	    t.date     "due_date"
	    t.boolean  "completed",   default: false, null: false
	    t.integer  "list_id",                     null: false
	    t.datetime "created_at"
	    t.datetime "updated_at"
	  end

  end
end
