package dto;

import java.sql.Date;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.UpdateTimestamp;

@Entity
@Table(name = "clas")
public class Clas {
//	
//	@ManyToOne(cascade = CascadeType.ALL)
//    private Student_Registration student_registration;

	@Id
	@GeneratedValue
	@Column(name = "class_id")
	private int class_id;

	@Column(name = "name", length = 50)
	private String name;

	@Column(name = "code", length = 10)
	private String code;

	@Column(name = "description", length = 255)
	private String description;

	@Column(name = "status")
	private Status status;

	public int getClass_id() {
		return class_id;
	}

	public void setClass_id(int class_id) {
		this.class_id = class_id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Status getStatus() {
		return status;
	}

	public void setStatus(Status status) {
		this.status = status;
	}

	public Date getCreated_date() {
		return created_date;
	}

	public void setCreated_date(Date created_date) {
		this.created_date = created_date;
	}

	public String getCreated_by() {
		return created_by;
	}

	public void setCreated_by(String created_by) {
		this.created_by = created_by;
	}

	public Date getUpdated_date() {
		return updated_date;
	}

	public void setUpdated_date(Date updated_date) {
		this.updated_date = updated_date;
	}

	public String getUpdated_by() {
		return updated_by;
	}

	public void setUpdated_by(String updated_by) {
		this.updated_by = updated_by;
	}
	
	@CreationTimestamp
	@Column(name = "created_date",updatable = false)
	private Date created_date;

	@Column(name = "created_by", length = 50)
	private String created_by="Administration";

	@UpdateTimestamp
	@Column(name = "updated_date",updatable = false)
	private Date updated_date;

	@Column(name = "updated_by", length = 50)
	private String updated_by="Administration";

}
