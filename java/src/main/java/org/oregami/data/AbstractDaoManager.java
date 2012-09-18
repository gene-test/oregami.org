package org.oregami.data;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.PersistenceContextType;

import org.oregami.entities.BaseEntity;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

@Repository
@Transactional(readOnly = false, propagation = Propagation.REQUIRED)
public abstract class AbstractDaoManager<T extends BaseEntity> implements BasicDaoManager<T> {

	public abstract Class<T> getEntityClass();

	@PersistenceContext(type = PersistenceContextType.TRANSACTION)
	private EntityManager entityManager;

	@Override
	public void saveEntity(T entity) {
		entityManager.persist(entity);
	}

	@Override
	public void updateEntity(T entity) {
		entityManager.persist(entity);
	}

	@Override
	public void deleteEntity(T entity) {
		entityManager.remove(entity);
	}

	@Override
	public T getEntityById(Object id) {
		System.err.println(entityManager.isOpen());
		return entityManager.find(getEntityClass(), id);
	}
}
