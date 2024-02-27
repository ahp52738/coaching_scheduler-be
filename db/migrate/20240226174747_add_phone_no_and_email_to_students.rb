class AddPhoneNoAndEmailToStudents < ActiveRecord::Migration[7.0]
  def change
    add_column :students, :phone_no, :string
    add_column :students, :email, :string
  end
end
