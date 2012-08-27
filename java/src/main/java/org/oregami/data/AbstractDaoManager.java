package org.oregami.data;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;

import org.oregami.entities.BaseEntity;

public abstract class AbstractDaoManager<T extends BaseEntity> implements BasicDaoManager<T> {

	@Override
	public void saveEntity(T entity) {
		EntityManagerFactory entityManagerFactory = HibernateJpaUtil.getEntityManagerFactory();

		EntityManager entityManager = entityManagerFactory.createEntityManager();
		EntityTransaction tx = entityManager.getTransaction();
		tx.begin();

	}

	@Override
	public void updateEntity(T entity) {
		// TODO Auto-generated method stub

	}

	@Override
	public void deleteEntity(T entity) {
		// TODO Auto-generated method stub

	}

	@Override
	public T getEntityById(Integer id) {
		// TODO Auto-generated method stub
		return null;
	}

}
