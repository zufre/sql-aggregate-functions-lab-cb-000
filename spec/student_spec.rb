require "spec_helper"


describe "aggregate functions sql" do
  before do
    @db = SQLite3::Database.new(':memory:')
    SQLRunner.make_methods
    @sql_runner = SQLRunner.new(@db)
    @sql_runner.execute_sql_create
    @sql_runner.execute_sql_insert
  end

  describe "#highest_student_gpa" do
    it 'finds the highest gpa' do
      expect(@db.execute(highest_student_gpa)).to eq([[4.0]])
    end
  end
  describe "#lowest_student_gpa" do
    it 'finds the lowest gpa' do
      expect(@db.execute(lowest_student_gpa)).to eq([[1.9]])
    end
  end
  describe "#average_student_gpa" do
    it 'finds the average gpa' do
      expect(@db.execute(average_student_gpa)).to eq([[2.95]])
    end
  end
  describe "#total_tardies_for_all_students" do
    it 'finds the total amount of tardies for all students' do
      expect(@db.execute(total_tardies_for_all_students)).to eq([[49]])
    end
  end
  describe "#counts_all_students_groups_by_grade" do
    it 'counts all students and groups them by grade' do
      expect(@db.execute(counts_all_students_groups_by_grade)).to eq([[9, 3], [10, 2], [11, 2], [12, 1]])

    end
  end

end
