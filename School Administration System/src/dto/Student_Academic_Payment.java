package dto;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Transient;

@Entity
@Table(name="student_academic_payment")
public class Student_Academic_Payment {
	
	@Id
	@GeneratedValue
	@Column(name="academic_payment_id")
	private int academic_payment_id;

	public int getAcademic_payment_id() {
		return academic_payment_id;
	}


	public void setAcademic_payment_id(int academic_payment_id) {
		this.academic_payment_id = academic_payment_id;
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


	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public Double getTotal_payment_amount() {
		return total_payment_amount;
	}


	public void setTotal_payment_amount(Double total_payment_amount) {
		this.total_payment_amount = total_payment_amount;
	}


	public Payment_Status getPayment_status() {
		return payment_status;
	}

	public void setPayment_status(Payment_Status payment_status) {
		this.payment_status = payment_status;
	}

	public Grade_Status getGrade_status() {
		return grade_status;
	}

	public void setGrade_status(Grade_Status grade_status) {
		this.grade_status = grade_status;
	}
	
//	private int select_student_id;

//	public int getSelect_student_id() {
//		return select_student_id;
//	}
//
//	public void setSelect_student_id(int select_student_id) {
//		this.select_student_id = select_student_id;
//	}

	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name="student_id")
	private Student_Registration student;
	
	@ManyToOne(cascade = CascadeType.ALL)
	@JoinColumn(name="grade_id")
	private Grade grade;
	
	@ManyToOne(cascade = CascadeType.ALL)
	@JoinColumn(name="class_id")
	private Clas clas;
	
	@Column(name="promotion")
	private Double promotion;
	
	@Column(name="class_amount")
	private Double class_amount;
	
	@Column(name="payment_type",length=10)
	private PaymentType tution_fee_pay_type;
	
	@Column(name="total_tution_fee_amount",length = 10)
	private Double total_tution_fee_amount;
	
	@Column(name="remark",length = 50)
	private String remark;
	
	@Column(name="total_payment_amount")
	private Double total_payment_amount;
	
	public String getAcademic_year() {
		return academic_year;
	}


	public void setAcademic_year(String academic_year) {
		this.academic_year = academic_year;
	}

	@Enumerated(EnumType.STRING)
	@Column(name="payment_status")
	private Payment_Status payment_status=Payment_Status.Unpaid;
	
	@Transient
	private String payment_status_str;
	
	public String getPayment_status_str() {
		return payment_status_str;
	}


	public void setPayment_status_str(String payment_status_str) {
		this.payment_status_str = payment_status_str;
	}

	@Enumerated(EnumType.STRING)
	@Column(name="grade_status")
	private Grade_Status grade_status=Grade_Status.ATTENDING;
	
	@Column(name="academic_year",length =10)
	private String academic_year;
	
	
	
	
}
