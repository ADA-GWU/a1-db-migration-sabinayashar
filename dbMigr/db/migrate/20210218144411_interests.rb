class Interests < ActiveRecord::Migration[6.1]
  def up
  	rename_column:interests, :interest, :interests
  	execute <<-SQL 
  		alter table interests alter interests type character varying[] using array[interests];
  		create table copy as table interests;
  		truncate table interests;
  		insert into interests select student_id, array_agg(interests order by student_id) interests from copy group by student_id;
		drop table copy;
  	SQL
  end

  def down
  	execute <<-SQL
  		create table copy as table interests;
  		truncate table interests;
  		alter table interests alter column interests type varchar(15) using array_to_string(interests, ',');
  		insert into interests select student_id, unnest(interests) interests from copy;
		drop table copy;
  	SQL
  	rename_column:interests, :interests, :interest
  end
end
