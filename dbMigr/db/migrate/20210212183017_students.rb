class Students < ActiveRecord::Migration[6.1]
    def up
  	rename_column:students, :st_id, :student_id
  	change_column:students, :st_name, :string, :limit => 30
    end

  def down
  	change_column:students, :st_name, :string, :limit => 15
  	rename_column:students, :student_id, :st_id
    end
end
