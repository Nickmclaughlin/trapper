class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.string :trap_id
      t.string :remote_ip
      t.text :req_method
      t.text :scheme
      t.text :query_string
      t.text :query_params
      t.text :cookies
      t.text :headers
      t.text :raw_response

      t.timestamps
    end
  end
end
