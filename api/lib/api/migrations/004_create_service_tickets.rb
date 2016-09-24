class CreateServiceTickets < ActiveRecord::Migration
  def change
    create_table :service_tickets do |t|
      t.string :name, null: false
      t.string :service
      t.timestamps
    end
  end
end
