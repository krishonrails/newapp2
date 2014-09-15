class ChangeColumnOnPlayer < ActiveRecord::Migration
  def chage
  	change_column :players,:dob,:date
  end
end
