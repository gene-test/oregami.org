package org.oregami.data;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.PersistenceContextType;

import org.oregami.entities.BaseEntity;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

@Transactional(readOnly = true, propagation = Propagation.REQUIRED)
public abstract class AbstractDaoManager<T extends BaseEntity> implements BasicDaoManager<T> {

	public abstract Class<T> getEntityClass();

	@PersistenceContext(type = PersistenceContextType.TRANSACTION)
	protected EntityManager entityManager;

	@Override
	@Transactional(readOnly = false)
	public void saveEntity(T entity) {
		entityManager.persist(entity);
	}

	@Override
	@Transactional(readOnly = false)
	public void updateEntity(T entity) {
		entityManager.persist(entity);
	}

	@Override
	@Transactional(readOnly = false)
	public void deleteEntity(T entity) {
		entityManager.remove(entity);
	}

	@Override
	public T getEntityById(Object id) {
		return entityManager.find(getEntityClass(), id);
	}
}
