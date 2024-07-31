package dao;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.transaction.annotation.Transactional;

import dto.Grade;

@Transactional
public class GradeDaoImpl implements GradeDao {

	private SessionFactory sessionFactory;

	public GradeDaoImpl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	public void save(Grade grade) {
		Session session = (sessionFactory).getCurrentSession();
		try {
			session.beginTransaction();
			session.save(grade);
		} catch (HibernateException e) {
			e.printStackTrace();
			session.getTransaction().rollback();
		}
		session.getTransaction().commit();

	}
	
	@SuppressWarnings("unchecked")
	@Override 
	public List<Grade> listGrade() {
		
		Session session = sessionFactory.getCurrentSession();
		session.beginTransaction();
		List<Grade> grade = null;
		try {
			System.out.println("List............");
			grade = (List<Grade>)session.createQuery("from Grade").list();
			
		} catch (HibernateException e) {
			e.printStackTrace();
			session.getTransaction().rollback();
		}
		session.getTransaction().commit();
		return grade;
	}
	
	@Override 
	public Grade getId(int grade_id) {
		Session session = sessionFactory.getCurrentSession();
		Grade grade=null;
		try {
			System.out.println("getting grade id");
			session.beginTransaction();
		    grade = (Grade) session.get(Grade.class, grade_id);
		} catch (HibernateException e) {
			e.printStackTrace();
			session.getTransaction().rollback();
		}
		session.getTransaction().commit();
		return grade;
	}
	
	@Override
	public void updateGrade(Grade grade) {
		Session session = (sessionFactory).getCurrentSession();
		try {
			session.beginTransaction();
			session.merge(grade);
		  } catch (HibernateException e) {
			  e.printStackTrace();
			  session.getTransaction().rollback();
		}
			session.getTransaction().commit();
		
	}
}
