package dao;

import java.util.List;

import dto.Student_Academic;
import dto.Student_Academic_Payment;

public interface StudentAcademicPaymentDao {
	
	public void savePayment(Student_Academic_Payment sap);

	List<Student_Academic_Payment> listStudentAcademicPayment();

	Student_Academic_Payment getAcademicId(int academic_id);

	public void updateSAP(Student_Academic_Payment sap);
}
