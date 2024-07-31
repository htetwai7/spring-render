package dao;

import java.util.List;

import dto.Grade;
import dto.Student_Academic;

public interface StudentAcademicDao {

	public void save(Student_Academic ac);

	List<Student_Academic> listStudentAcademic();

	Student_Academic getStudentAcademicId(int student_id);

}
