class CreateAppointments < ActiveRecord::Migration[5.2]
  def change
    create_table :appointments do |t|
      t.references :dealer, foreign_key: true
      t.references :user, foreign_key: true
      t.datetime :date

      t.timestamps
    end
  end
end
