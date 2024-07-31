package dto;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "student_registration")
public class Student_Registration {
	
	@Id
	@GeneratedValue
	@Column(name = "student_id")
	private int student_id;

	@Column(name = "name", nullable = false, length = 50)
	private String name;

	@Column(name = "gender", nullable = false)
	private Gender gender;

	@Column(name = "date_of_birth", nullable = false, length = 50)
	private String date_of_birth;

	@Column(name = "email", nullable = false, length = 50)
	private String email;

	@Column(name = "address", nullable = false, length = 100)
	private String address;

	@Column(name = "phone_no", nullable = false, length = 20)
	private String phone_no;

	@Column(name = "nationality", nullable = false, length = 50)
	private String nationality;

	@Column(name = "religion", nullable = false, length = 50)
	private String religion;

	@Column(name = "nrc", nullable = false, length = 50)
	private String nrc;

	public int getStudent_id() {
		return student_id;
	}

	public void setStudent_id(int student_id) {
		this.student_id = student_id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Gender getGender() {
		return gender;
	}

	public void setGender(Gender gender) {
		this.gender = gender;
	}

	public String getDate_of_birth() {
		return date_of_birth;
	}

	public void setDate_of_birth(String date_of_birth) {
		this.date_of_birth = date_of_birth;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPhone_no() {
		return phone_no;
	}

	public void setPhone_no(String phone_no) {
		this.phone_no = phone_no;
	}

	public String getNationality() {
		return nationality;
	}

	public void setNationality(String nationality) {
		this.nationality = nationality;
	}

	public String getReligion() {
		return religion;
	}

	public void setReligion(String religion) {
		this.religion = religion;
	}

	public String getNrc() {
		return nrc;
	}

	public void setNrc(String nrc) {
		this.nrc = nrc;
	}

	public String getFather_name() {
		return father_name;
	}

	public void setFather_name(String father_name) {
		this.father_name = father_name;
	}

	public String getMother_name() {
		return mother_name;
	}

	public void setMother_name(String mother_name) {
		this.mother_name = mother_name;
	}

	public String getFather_occupation() {
		return father_occupation;
	}

	public void setFather_occupation(String father_occupation) {
		this.father_occupation = father_occupation;
	}

	public String getMother_occupation() {
		return mother_occupation;
	}

	public void setMother_occupation(String mother_occupation) {
		this.mother_occupation = mother_occupation;
	}

	public String getFather_phone_no() {
		return father_phone_no;
	}

	public void setFather_phone_no(String father_phone_no) {
		this.father_phone_no = father_phone_no;
	}

	public String getFather_nrc() {
		return father_nrc;
	}

	public void setFather_nrc(String father_nrc) {
		this.father_nrc = father_nrc;
	}

	public String getMother_nrc() {
		return mother_nrc;
	}

	public void setMother_nrc(String mother_nrc) {
		this.mother_nrc = mother_nrc;
	}

	public String getPermanent_address() {
		return permanent_address;
	}

	public void setPermanent_address(String permanent_address) {
		this.permanent_address = permanent_address;
	}

	public String getPresent_address() {
		return present_address;
	}

	public void setPresent_address(String present_address) {
		this.present_address = present_address;
	}

	@Lob
	@Column(name = "student_photo", nullable = false)
	private byte[] student_photo;

	public void setStudent_photo(byte[] student_photo) {
		this.student_photo = student_photo;
	}

	@Column(name = "father_name", nullable = false, length = 50)
	private String father_name;

	@Column(name = "mother_name", nullable = false, length = 50)
	private String mother_name;

	@Column(name = "father_occupation", nullable = false, length = 50)
	private String father_occupation;

	@Column(name = "mother_occupation", nullable = false, length = 50)
	private String mother_occupation;

	@Column(name = "father_phone_no", nullable = false, length = 50)
	private String father_phone_no;

	@Column(name = "father_nrc", nullable = false, length = 50)
	private String father_nrc;

	@Column(name = "mother_nrc", nullable = false, length = 50)
	private String mother_nrc;

	@Column(name = "permanent_address", nullable = false, length = 100)
	private String permanent_address;

	@Column(name = "present_address", nullable = false, length = 50)
	private String present_address;

	@ManyToOne(cascade = CascadeType.ALL)
	@JoinColumn(name="grade_id")
	private Grade grade;
	
	private int selectedGrade; 
	private int selectedClass;
	

	public int getSelectedClass() {
		return selectedClass;
	}

	public void setSelectedClass(int selectedClass) {
		this.selectedClass = selectedClass;
	}

	public int getSelectedGrade() {
		return selectedGrade;
	}


	public void setSelectedGrade(int g) {
		this.selectedGrade = g;
	}

	public Clas getClas() {
		return clas;
	}

	public void setClas(Clas clas) {
		this.clas = clas;
	}

	public Grade getGrade() {
		return grade;
	}

	public void setGrade(Grade grade) {
		this.grade = grade;
	}

	public byte[] getStudent_photo() {
		return student_photo;
	}

	@ManyToOne(cascade = CascadeType.ALL)
	@JoinColumn(name="class_id")
	private Clas clas;

}
