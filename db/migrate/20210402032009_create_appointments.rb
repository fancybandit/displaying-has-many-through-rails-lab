class CreateAppointments < ActiveRecord::Migration[5.0]
  def change
    create_table :appointments do |t|
      t.datetime :appointment_datetime
      t.references :patient, foreign_key: {on_delete: :cascade}
      t.references :doctor, foreign_key: {on_delete: :cascade}

      t.timestamps
    end
  end
end
