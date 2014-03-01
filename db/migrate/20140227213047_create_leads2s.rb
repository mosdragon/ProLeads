class CreateLeads2s < ActiveRecord::Migration
  def change
    create_table :leads2s do |t|
      t.string :name
      t.integer :status
      t.string :lead_developer
      t.text :note
      t.decimal :hourly_rate
      t.date :deadline

      t.timestamps
    end
  end
end
