package dao;

import org.springframework.transaction.annotation.Transactional;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import dto.Student_Registration;

@Transactional
public class StudentDaoImpl implements StudentDao {
	
	private SessionFactory sessionFactory;
	 
    public StudentDaoImpl(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

	@Override
	public void save(Student_Registration sr) {
		Session session = (sessionFactory).getCurrentSession();
		try {
			session.beginTransaction();
			session.save(sr);
		  } catch (HibernateException e) {
			  e.printStackTrace();
			  session.getTransaction().rollback();
		}
			session.getTransaction().commit();
		
	}
	
	@SuppressWarnings("unchecked")
	@Override 
	public List<Student_Registration> select() {
		
		Session session = sessionFactory.getCurrentSession();
		session.beginTransaction();
		List<Student_Registration> rsList = null;
		try {
			System.out.println("selecting");
			rsList = (List<Student_Registration>)session.createQuery("from Student_Registration").list();
			
		} catch (HibernateException e) {
			e.printStackTrace();
			session.getTransaction().rollback();
		}
		session.getTransaction().commit();
		return rsList;
	}
	
	@Override 
	public Student_Registration getId(int student_id) {
		Session session = sessionFactory.getCurrentSession();
		Student_Registration sr=null;
		try {
			System.out.println("getting student id");
			session.beginTransaction();
		    sr = (Student_Registration) session.get(Student_Registration.class, student_id);
		} catch (HibernateException e) {
			e.printStackTrace();
			session.getTransaction().rollback();
		}
		session.getTransaction().commit();
		return sr;
	}
	
	@SuppressWarnings("unchecked")
	@Override 
	public List<Student_Registration> list() {
		
		Session session = sessionFactory.getCurrentSession();
		session.beginTransaction();
		List<Student_Registration> sr = null;
		try {
			System.out.println("List............");
			sr = (List<Student_Registration>)session.createQuery("from Student_Registration").list();
			
		} catch (HibernateException e) {
			e.printStackTrace();
			session.getTransaction().rollback();
		}
		session.getTransaction().commit();
		return sr;
	}
	
	@Override
	public void update(Student_Registration sr) {
		Session session = (sessionFactory).getCurrentSession();
		try {
			session.beginTransaction();
			session.merge(sr);
		  } catch (HibernateException e) {
			  e.printStackTrace();
			  session.getTransaction().rollback();
		}
			session.getTransaction().commit();
		
	}




}
