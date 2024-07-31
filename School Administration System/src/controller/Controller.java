package controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import dao.ClasDao;
import dao.GradeDao;
import dao.StudentAcademicDao;
import dao.StudentAcademicPaymentDao;
import dao.StudentDao;
import dto.Clas;
import dto.Grade;
import dto.Grade_Status;
import dto.Payment_Status;
import dto.Student_Academic;
import dto.Student_Academic_Payment;
import dto.Student_Registration;

@org.springframework.stereotype.Controller
public class Controller {

	@Autowired
	private StudentDao studentDao;

	@Autowired
	private GradeDao gradeDao;

	@Autowired
	private ClasDao clasDao;

	@Autowired
	private StudentAcademicDao studentAcademicDao;

	@Autowired
	private StudentAcademicPaymentDao studentAcademicPaymentDao;

	@RequestMapping(value = "/")
	public String loginn() {
		return "login";
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(@RequestParam(value = "username", required = true) String un,
			@RequestParam(value = "password", required = true) String p) {

		String uname = un;
		String pass = p;

		if (uname.equals("admin") && pass.equals("admin")) {
			System.out.println("check..................");
			return "menu";
		} else {
			System.out.println("uncheck..................");
			return "login";
		}
	}

	@RequestMapping(value = "/listHistory")
	public ModelAndView listHistory() {
		List<Student_Academic_Payment> sapList = studentAcademicPaymentDao.listStudentAcademicPayment();
		ModelAndView model = new ModelAndView("listHistory");
		model.addObject("sapList", sapList);

		List<Student_Registration> sr = studentDao.list();
		model.addObject("sr", sr);

		return model;
	}

	@RequestMapping(value = "/listPayment")
	public ModelAndView listPayment() {
		List<Student_Academic_Payment> sapList = studentAcademicPaymentDao.listStudentAcademicPayment();
		ModelAndView model = new ModelAndView("listPayment");
		model.addObject("sapList", sapList);
		return model;
	}
	
	

	// list student controller
	@RequestMapping(value = "/listStudent")
	public ModelAndView list() {
		List<Student_Registration> sr = studentDao.list();
		ModelAndView model = new ModelAndView("list");
		model.addObject("sr", sr);
		return model;
	}

	// add new student controller
	@RequestMapping(value = "/addNewStudent", method = RequestMethod.GET)
	public ModelAndView insertStudent(ModelAndView model) {
		System.out.println("loadAddForm controller............");
		List<Grade> grade = gradeDao.listGrade();
		List<Clas> clas = clasDao.listClas();

		model = new ModelAndView("studentCreateForm");

		model.addObject("grade", grade);
		model.addObject("clas", clas);
		return model;
	}

	// saved student controller
	@RequestMapping(value = "/saveStudent", method = RequestMethod.POST)
	public ModelAndView addStudent(@Valid @ModelAttribute("student") Student_Registration sr) {
		System.out.println("saved student to database...");

		int gradeId = sr.getSelectedGrade();
		Grade grade = gradeDao.getId(gradeId);
		sr.setGrade(grade);

		int classId = sr.getSelectedClass();
		Clas clas = clasDao.getClassId(classId);
		sr.setClas(clas);

		studentDao.save(sr);

		List<Student_Registration> s = studentDao.list();
		ModelAndView model = new ModelAndView("list");
		model.addObject("sr", s);
		return model;
	}

	// edit student form controller
	@RequestMapping(value = "/editStudent")
	public ModelAndView edit(@RequestParam(value = "id", required = true) int student_id) {
		Student_Registration sr = studentDao.getId(student_id);
		ModelAndView model = new ModelAndView("updateStudent");

		List<Grade> grade = gradeDao.listGrade();
		List<Clas> clas = clasDao.listClas();

		model.addObject("a", sr);
		model.addObject("grade", grade);
		model.addObject("clas", clas);
		return model;

	}

	// update student controller
	@RequestMapping(value = "/updateStudent", method = RequestMethod.POST)
	public ModelAndView update(@ModelAttribute("sr") Student_Registration sr) {

		System.out.println("update controller");

		int gradeId = sr.getSelectedGrade();
		Grade grade = gradeDao.getId(gradeId);

		int classId = sr.getSelectedClass();
		Clas clas = clasDao.getClassId(classId);

		Student_Registration s = studentDao.getId(sr.getStudent_id());

		s.setName(sr.getName());
		s.setGender(sr.getGender());
		s.setDate_of_birth(sr.getDate_of_birth());
		s.setEmail(sr.getEmail());
		s.setAddress(sr.getAddress());
		s.setPhone_no(sr.getPhone_no());
		s.setNationality(sr.getNationality());
		s.setReligion(sr.getReligion());
		s.setNrc(sr.getNrc());
		s.setStudent_photo(sr.getStudent_photo());
		s.setFather_name(sr.getFather_name());
		s.setMother_name(sr.getMother_name());
		s.setFather_occupation(sr.getFather_occupation());
		s.setMother_occupation(sr.getMother_occupation());
		s.setFather_phone_no(sr.getFather_phone_no());
		s.setFather_nrc(sr.getFather_nrc());
		s.setMother_nrc(sr.getMother_nrc());
		s.setPermanent_address(sr.getPermanent_address());
		s.setPresent_address(sr.getPresent_address());
		s.setSelectedClass(sr.getSelectedClass());
		s.setSelectedGrade(sr.getSelectedGrade());
		s.setGrade(grade);
		s.setClas(clas);

		studentDao.update(s);

		List<Student_Registration> srList = studentDao.list();
		ModelAndView model = new ModelAndView("list");
		model.addObject("sr", srList);

		return model;
	}

	// search student by id controller
	@RequestMapping(value = "/searchStudent")
	public ModelAndView search(@RequestParam(value = "student_id", required = true) int student_id) {

		Student_Registration sr = studentDao.getId(student_id);
		ModelAndView model = new ModelAndView("searchStudent");
		model.addObject("a", sr);
		return model;
	}

	// save grade controller
	@RequestMapping(value = "/saveGrade", method = RequestMethod.POST)
	public ModelAndView addGrade(@Valid @ModelAttribute("grade") Grade grade) {
		System.out.println("saved grade to database...");
		grade.setCreated_by("Administration");
		grade.setCreated_by("Administration");
		gradeDao.save(grade);

		List<Grade> gradeList = gradeDao.listGrade();
		ModelAndView model = new ModelAndView("listGrade");
		model.addObject("grade", gradeList);
		return model;
	}

	// list grade controller
	@RequestMapping(value = "/listGrade")
	public ModelAndView listGrade() {
		List<Grade> grade = gradeDao.listGrade();
		ModelAndView model = new ModelAndView("listGrade");
		model.addObject("grade", grade);
		return model;
	}

	// add new grade controller
	@RequestMapping(value = "/addNewGrade", method = RequestMethod.GET)
	public String insertGrade(Model model) {
		System.out.println("loadGradeCreateForm controller............");
		Grade grade = new Grade();
		model.addAttribute("grade", grade);
		return "gradeCreateForm";
	}

	// edit grade form controller
	@RequestMapping(value = "/editGrade")
	public ModelAndView editGrade(@RequestParam(value = "id", required = true) int grade_id) {
		Grade grade = gradeDao.getId(grade_id);
		ModelAndView model = new ModelAndView("updateGrade");
		model.addObject("g", grade);
		return model;

	}

	// update grade controller
	@RequestMapping(value = "/updateGrade", method = RequestMethod.POST)
	public ModelAndView updateGrade(@ModelAttribute("grade") Grade grade) {
		System.out.println("update grade controller");

		Grade g = gradeDao.getId(grade.getGrade_id());
		g.setCreated_date(grade.getCreated_date());
		g.setCreated_by(grade.getCreated_by());
		g.setUpdated_by(grade.getUpdated_by());
		g.setCode(grade.getCode());
		g.setDescription(grade.getDescription());
		g.setName(grade.getName());
		gradeDao.updateGrade(g);
		System.out.println("updated ..................");

		List<Grade> grades = gradeDao.listGrade();
		ModelAndView model = new ModelAndView("listGrade");
		model.addObject("grade", grades);

		return model;
	}

	// save class controller
	@RequestMapping(value = "/saveClas", method = RequestMethod.POST)
	public ModelAndView addGrade(@Valid @ModelAttribute("clas") Clas clas) {
		System.out.println("saved class to database...");
		clas.setCreated_by("Administration");
		clas.setUpdated_by("Administration");
		clasDao.save(clas);

		List<Clas> c = clasDao.listClas();
		ModelAndView model = new ModelAndView("listClass");
		model.addObject("clas", c);
		return model;
	}

	// list class controller
	@RequestMapping(value = "/listClass")
	public ModelAndView listClass() {
		List<Clas> clas = clasDao.listClas();
		ModelAndView model = new ModelAndView("listClass");
		model.addObject("clas", clas);
		return model;
	}

	// add new class controller
	@RequestMapping(value = "/addNewClass", method = RequestMethod.GET)
	public String insertClass(Model model) {
		System.out.println("loadClassCreateForm controller............");
		Clas clas = new Clas();
		model.addAttribute("class", clas);
		return "classCreateForm";
	}

	// edit class form controller
	@RequestMapping(value = "/editClass")
	public ModelAndView editClass(@RequestParam(value = "id", required = true) int class_id) {
		Clas clas = clasDao.getClassId(class_id);
		ModelAndView model = new ModelAndView("updateClass");
		model.addObject("c", clas);
		return model;

	}

	// update class controller
	@RequestMapping(value = "/updateClass", method = RequestMethod.POST)
	public ModelAndView updateClass(@ModelAttribute("class") Clas clas) {
		System.out.println("update class controller");
		Clas c = clasDao.getClassId(clas.getClass_id());
		c.setCreated_date(clas.getCreated_date());
		c.setCreated_by(clas.getCreated_by());
		c.setUpdated_by(clas.getUpdated_by());
		c.setCode(clas.getCode());
		c.setDescription(clas.getDescription());
		c.setName(clas.getName());
		clasDao.updateClas(c);

		List<Clas> classes = clasDao.listClas();
		ModelAndView model = new ModelAndView("listClass");
		model.addObject("clas", classes);

		return model;
	}

	// Search student for student academic form
	@RequestMapping(value = "/searchStudentForAcademic")
	public ModelAndView searchStudentForAcademic(@RequestParam(value = "student_id", required = true) int student_id) {

		Student_Registration sr = studentDao.getId(student_id);
		List<Grade> grade = gradeDao.listGrade();
		List<Clas> clas = clasDao.listClas();

		ModelAndView model = new ModelAndView("fillStudentAcademic");
		model.addObject("sr", sr);
		model.addObject("grade", grade);
		model.addObject("clas", clas);
		return model;
	}

	// save student academic to database
	@RequestMapping(value = "/saveAcademic")
	public ModelAndView addStudentAcademic(@Valid @ModelAttribute("academic") Student_Academic sa) {
		System.out.println("saved student academic to database...");

		int student_id = sa.getSelect_student_id();
		String year = sa.getAcademic_year();

		Student_Registration sr = studentDao.getId(student_id);
		// save student academic
		sa.setStudent(sr);
		sa.setGrade(sr.getGrade());
		sa.setClas(sr.getClas());
		sa.setAcademic_year(year);
		studentAcademicDao.save(sa);

		// save student academic payment required info (not include payment status)
		Student_Academic_Payment sap = new Student_Academic_Payment();
		sap.setStudent(sr);
		sap.setGrade(sr.getGrade());
		sap.setClas(sr.getClas());
		sap.setClass_amount(sa.getClass_amount());
		sap.setPromotion(sa.getPromotion() * (sa.getClass_amount() / 100));
		sap.setTotal_tution_fee_amount(sa.getClass_amount());
		sap.setRemark(sa.getRemark());
		sap.setTution_fee_pay_type(sa.getTution_fee_pay_type());
		sap.setAcademic_year(sa.getAcademic_year());
		sap.setTotal_payment_amount(sa.getClass_amount() - (sa.getPromotion() * (sa.getClass_amount() / 100)));
		studentAcademicPaymentDao.savePayment(sap);

		System.out.println("saved student academic and payment");
		ModelAndView model = new ModelAndView("listPayment");

		List<Student_Academic_Payment> sapList = studentAcademicPaymentDao.listStudentAcademicPayment();
		model.addObject("sapList", sapList);

		return model;
	}

	// add new academic controller
	@RequestMapping(value = "/addNewAcademic", method = RequestMethod.GET)
	public ModelAndView insertNewAcademic(ModelAndView model) {
		System.out.println("add new Academic controller............");
		model = new ModelAndView("studentAcademicCreateForm");
		return model;
	}

	// Search student for student payment page
	@RequestMapping(value = "/searchStudentForPaymentPage")
	public ModelAndView searchStudentForPaymentPage(
			@RequestParam(value = "id", required = true) int academic_payment_id) {

		Student_Academic_Payment sap = studentAcademicPaymentDao.getAcademicId(academic_payment_id);

		ModelAndView model = new ModelAndView("fillStudentAcademicPaymentPage");

		model.addObject("sap", sap);
		return model;
	}

	// save student academic payment to database
	@RequestMapping(value = "/saveAcademicPayment", method = RequestMethod.POST)
	public ModelAndView addAcademicPayment(@ModelAttribute Student_Academic_Payment Sap) {
		System.out.println("saved student academic payment to database...");

		Student_Academic_Payment sap = studentAcademicPaymentDao.getAcademicId(Sap.getAcademic_payment_id());

		sap.setPayment_status(Payment_Status.Paid);
		sap.setClass_amount(Sap.getClass_amount());
		sap.setTotal_tution_fee_amount(Sap.getTotal_tution_fee_amount());
		sap.setTotal_payment_amount(Sap.getTotal_payment_amount());
		sap.setPromotion(Sap.getPromotion());

		studentAcademicPaymentDao.updateSAP(sap);

		System.out.println("update student academic payment");

		ModelAndView model = new ModelAndView("listPayment");

		List<Student_Academic_Payment> sapList = studentAcademicPaymentDao.listStudentAcademicPayment();
		model.addObject("sapList", sapList);

		return model;

	}

	// edit student academic payment form controller
	@RequestMapping(value = "/editAcademicPayment")
	public ModelAndView editAcademicPayment(@RequestParam(value = "id", required = true) int sap_id) {

		Student_Academic_Payment sap = studentAcademicPaymentDao.getAcademicId(sap_id);
		ModelAndView model = new ModelAndView("studentPaymentEditPage");

//		studentAcademicPaymentDao.updateSAP(sap);
		Grade_Status[] grade_status = Grade_Status.values();

		model.addObject("s", sap);
		model.addObject("gs", grade_status);
		return model;

	}

	// update student academic payment controller
	@RequestMapping(value = "/updateAcademicPayment", method = RequestMethod.POST)
	public ModelAndView updateAcademicPayment(@ModelAttribute Student_Academic_Payment Sap) {
		System.out.println("----------update academic payment controller----------");

		Student_Academic_Payment sap = studentAcademicPaymentDao.getAcademicId(Sap.getAcademic_payment_id());

		sap.setGrade_status(Sap.getGrade_status());
		studentAcademicPaymentDao.updateSAP(sap);

		ModelAndView model = new ModelAndView("listPayment");
		List<Student_Academic_Payment> sapList = studentAcademicPaymentDao.listStudentAcademicPayment();
		model.addObject("sapList", sapList);

		return model;
	}

	// search student by id controller
	@RequestMapping(value = "/search")
	public ModelAndView searchStudent(@RequestParam(value = "id", required = true) int sap_id) {

		Student_Academic_Payment sap = studentAcademicPaymentDao.getAcademicId(sap_id);

		List<Student_Academic_Payment> sapList = studentAcademicPaymentDao.listStudentAcademicPayment();

		ModelAndView model = new ModelAndView("ok");
		model.addObject("sapList", sapList);

		model.addObject("sap", sap);
		return model;
	}

}
