class AddDateOfBookingToBookings < ActiveRecord::Migration[7.0]
  def change
    add_column :bookings, :date_of_booking, :date
  end
end
