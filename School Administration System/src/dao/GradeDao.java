package dao;

import java.util.List;

import dto.Grade;

public interface GradeDao {
	public void save(Grade grade);

	public List<Grade> listGrade();

	public Grade getId(int grade_id);

	public void updateGrade(Grade grade);
}
