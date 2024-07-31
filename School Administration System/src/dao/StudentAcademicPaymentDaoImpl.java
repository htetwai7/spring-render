package dao;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.transaction.annotation.Transactional;

import dto.Grade;
import dto.Student_Academic;
import dto.Student_Academic_Payment;

@Transactional
public class StudentAcademicPaymentDaoImpl implements StudentAcademicPaymentDao{
	
	private SessionFactory sessionFactory;

	public StudentAcademicPaymentDaoImpl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}


	@Override
	public void savePayment(Student_Academic_Payment sap) {
		Session session = (sessionFactory).getCurrentSession();
		try {
			session.beginTransaction();
			session.save(sap);
		} catch (HibernateException e) {
			e.printStackTrace();
			session.getTransaction().rollback();
		}
		session.getTransaction().commit();

	}
	@Override 
	public Student_Academic_Payment getAcademicId(int academic_id) {
		Session session = sessionFactory.getCurrentSession();
		Student_Academic_Payment sap_id=null;
		try {
			System.out.println("getting academic payment id");
			session.beginTransaction();
		    sap_id = (Student_Academic_Payment) session.get(Student_Academic_Payment.class, academic_id);
		} catch (HibernateException e) {
			e.printStackTrace();
			session.getTransaction().rollback();
		}
		session.getTransaction().commit();
		return sap_id;
	}
	
	@SuppressWarnings("unchecked")
	@Override 
	public List<Student_Academic_Payment> listStudentAcademicPayment() {
		
		Session session = sessionFactory.getCurrentSession();
		session.beginTransaction();
		List<Student_Academic_Payment> sap = null;
		
		try {
			System.out.println("List............");
			sap = (List<Student_Academic_Payment>)session.createQuery("from Student_Academic_Payment").list();
			for (Student_Academic_Payment s : sap) {
				s.setPayment_status_str(s.getPayment_status().toString());
			}
			
		} catch (HibernateException e) {
			e.printStackTrace();
			session.getTransaction().rollback();
		}
		session.getTransaction().commit();
		return sap;
	}
	
	@Override
	public void updateSAP(Student_Academic_Payment sap) {
		Session session = (sessionFactory).getCurrentSession();
		try {
			session.beginTransaction();
			session.merge(sap);
		  } catch (HibernateException e) {
			  e.printStackTrace();
			  session.getTransaction().rollback();
		}
			session.getTransaction().commit();
		
	}

}
