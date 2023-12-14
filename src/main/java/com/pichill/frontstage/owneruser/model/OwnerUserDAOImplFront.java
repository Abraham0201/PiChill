package com.pichill.frontstage.owneruser.model;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.pichill.generaluser.entity.GeneralUser;
import com.pichill.owneruser.entity.OwnerUser;
import com.pichill.util.HibernateUtil;

public class OwnerUserDAOImplFront implements OwnerUserDAOFront{
	private final SessionFactory factory;
	
	public OwnerUserDAOImplFront() {
		factory = HibernateUtil.getSessionFactory();
	}
	
	private Session getSession() {
		return factory.getCurrentSession();
	}

	@Override
	public int insert(OwnerUser ownerUser) {
		// TODO Auto-generated method stub
				Session session = HibernateUtil.getSessionFactory().getCurrentSession();

				try {
					session.beginTransaction();
//					Integer id = (Integer) session.save(manage);
					session.save(ownerUser);
					
					session.getTransaction().commit();
					System.out.println("交易成功");
					return 1;
				} catch (Exception e) {
					e.printStackTrace();
					session.getTransaction().rollback();
					System.out.println("交易失敗");
				} finally {
					if (session != null && session.isOpen()) {
						session.close();
					}
				}
				return -1;
	}
	
	@Override
	public OwnerUser findByPK(Integer oUserID) {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		try {
			session.beginTransaction();
			OwnerUser ownerUser = session.get(OwnerUser.class, oUserID);
			session.getTransaction().commit();
			return ownerUser;
		} catch (Exception e) {
			e.printStackTrace();
			session.getTransaction().rollback();
		}
		return null;
	}
	
	public boolean isUsernameExists(String oUserName) {
		Session session = getSession();
		try {
			session.beginTransaction();
			System.out.println("查詢前");
			OwnerUser ownerUser = (OwnerUser) session.createQuery("FROM OwnerUser WHERE oUserName = :oUserName")
					.setParameter("oUserName", oUserName).uniqueResult();
			System.out.println("查詢後");

			session.getTransaction().commit();
			System.out.println("交易後");
			if (ownerUser != null) {
				System.out.println("有找到相同會員帳號");
				System.out.println(ownerUser);
				return true;
			} else {
				System.out.println("沒有找到相同會員帳號");
				return false;
			}

		} catch (Exception e) {
			System.out.println("例外處理");
			e.printStackTrace();
			session.getTransaction().rollback();
		} finally {
			if (session != null && session.isOpen()) {
				session.close();
			}
		}
		System.out.println("最後跑到這");
		return false; // 如果發生異常或没有找到會員，也返回false
	}
	
}