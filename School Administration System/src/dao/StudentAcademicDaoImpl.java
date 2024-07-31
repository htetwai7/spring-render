package dao;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.transaction.annotation.Transactional;

import dto.Student_Academic;

@Transactional
public class StudentAcademicDaoImpl implements StudentAcademicDao{
	
	private SessionFactory sessionFactory;
	
	public StudentAcademicDaoImpl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	
	@Override
	public void save(Student_Academic ac) {
		Session session = (sessionFactory).getCurrentSession();
		try {
			session.beginTransaction();
			session.save(ac);
		} catch (HibernateException e) {
			e.printStackTrace();
			session.getTransaction().rollback();
		}
		session.getTransaction().commit();

	}
	
	@SuppressWarnings("unchecked")
	@Override 
	public List<Student_Academic> listStudentAcademic() {
		
		Session session = sessionFactory.getCurrentSession();
		session.beginTransaction();
		List<Student_Academic> studentAcademic = null;
		try {
			System.out.println("List............");
			studentAcademic = (List<Student_Academic>)session.createQuery("from Student_Academic").list();
			
		} catch (HibernateException e) {
			e.printStackTrace();
			session.getTransaction().rollback();
		}
		session.getTransaction().commit();
		return studentAcademic;
	}
	
	@Override 
	public Student_Academic getStudentAcademicId(int student_id) {
		Session session = sessionFactory.getCurrentSession();
		Student_Academic sa=null;
		try {
			System.out.println("getting student academic id");
			session.beginTransaction();
		    sa = (Student_Academic) session.get(Student_Academic.class, student_id);
		} catch (HibernateException e) {
			e.printStackTrace();
			session.getTransaction().rollback();
		}
		session.getTransaction().commit();
		return sa;
	}
	
}
