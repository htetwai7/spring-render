package dto;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="student_academic")
public class Student_Academic {
	
	@Id
	@GeneratedValue
	@Column(name="academic_id")
	private int academic_id;
	
	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name="student_id")
	private Student_Registration student;

	private int select_student_id;

	public int getSelect_student_id() {
		return select_student_id;
	}

	public void setSelect_student_id(int select_student_id) {
		this.select_student_id = select_student_id;
	}

//	public Payment_Status getPayment_status() {
//		return payment_status;
//	}
//
//	public void setPayment_status(Payment_Status payment_status) {
//		this.payment_status = payment_status;
//	}

	@ManyToOne(cascade = CascadeType.ALL)
	@JoinColumn(name="grade_id")
	private Grade grade;
	
//	@Enumerated(EnumType.STRING)
//	@Column(name="payment_status")
//	private Payment_Status payment_status=Payment_Status.Unpaid;

	public int getAcademic_id() {
		return academic_id;
	}

	public void setAcademic_id(int academic_id) {
		this.academic_id = academic_id;
	}

	public Student_Registration getStudent() {
		return student;
	}

	public void setStudent(Student_Registration student) {
		this.student = student;
	}

	public Grade getGrade() {
		return grade;
	}

	public void setGrade(Grade grade) {
		this.grade = grade;
	}

	public Clas getClas() {
		return clas;
	}

	public void setClas(Clas clas) {
		this.clas = clas;
	}

	

	public Double getPromotion() {
		return promotion;
	}

	public void setPromotion(Double promotion) {
		this.promotion = promotion;
	}

	public Double getClass_amount() {
		return class_amount;
	}

	public void setClass_amount(Double class_amount) {
		this.class_amount = class_amount;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public PaymentType getTution_fee_pay_type() {
		return tution_fee_pay_type;
	}

	public void setTution_fee_pay_type(PaymentType tution_fee_pay_type) {
		this.tution_fee_pay_type = tution_fee_pay_type;
	}
	
	
	public Double getTotal_tution_fee_amount() {
		return total_tution_fee_amount;
	}

	public void setTotal_tution_fee_amount(Double total_tution_fee_amount) {
		this.total_tution_fee_amount = total_tution_fee_amount;
	}

	@ManyToOne(cascade = CascadeType.ALL)
	@JoinColumn(name="class_id")
	private Clas clas;
	
	@Column(name="promotion")
	private Double promotion;
	
	@Column(name="class_amount",length = 10)
	private Double class_amount;
	
	@Column(name="remark",length = 50)
	private String remark;
	
	@Column(name="payment_type",length=10)
	private PaymentType tution_fee_pay_type;
	
	@Column(name="total_tution_fee_amount",length = 10)
	private Double total_tution_fee_amount;
	
	@Column(name="academic_year",length=10)
	private String academic_year;

	public String getAcademic_year() {
		return academic_year;
	}

	public void setAcademic_year(String academic_year) {
		this.academic_year = academic_year;
	}
	
}
