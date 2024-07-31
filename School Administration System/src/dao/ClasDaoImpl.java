package dao;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.transaction.annotation.Transactional;

import dto.Clas;

@Transactional
public class ClasDaoImpl implements ClasDao {

	private SessionFactory sessionFactory;

	public ClasDaoImpl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	public void save(Clas clas) {
		Session session = (sessionFactory).getCurrentSession();
		try {
			session.beginTransaction();
			session.save(clas);
		} catch (HibernateException e) {
			e.printStackTrace();
			session.getTransaction().rollback();
		}
		session.getTransaction().commit();

	}
	
	@SuppressWarnings("unchecked")
	@Override 
	public List<Clas> listClas() {
		
		Session session = sessionFactory.getCurrentSession();
		session.beginTransaction();
		List<Clas> clas = null;
		try {
			System.out.println("List............");
			clas = (List<Clas>)session.createQuery("from Clas").list();
			
		} catch (HibernateException e) {
			e.printStackTrace();
			session.getTransaction().rollback();
		}
		session.getTransaction().commit();
		return clas;
	}
	
	@Override 
	public Clas getClassId(int class_id) {
		Session session = sessionFactory.getCurrentSession();
		Clas clas=null;
		try {
			System.out.println("getting class id");
			session.beginTransaction();
		    clas = (Clas) session.get(Clas.class, class_id);
		} catch (HibernateException e) {
			e.printStackTrace();
			session.getTransaction().rollback();
		}
		session.getTransaction().commit();
		return clas;
	}
	
	@Override
	public void updateClas(Clas clas) {
		Session session = (sessionFactory).getCurrentSession();
		try {
			session.beginTransaction();
			session.merge(clas);
		  } catch (HibernateException e) {
			  e.printStackTrace();
			  session.getTransaction().rollback();
		}
			session.getTransaction().commit();
		
	}
}
