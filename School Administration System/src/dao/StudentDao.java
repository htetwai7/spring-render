package dao;

import dto.Student_Registration;

public interface StudentDao {

	public void save(Student_Registration sr);

	public Student_Registration getId(int student_id);

	public java.util.List<Student_Registration> select();

	java.util.List<Student_Registration> list();

	public void update(Student_Registration sr);
}
