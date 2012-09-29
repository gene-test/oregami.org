package org.oregami.data;

import org.oregami.entities.BaseEntity;

public interface BasicDaoManager<T extends BaseEntity> {

	void saveEntity(T entity);

	void updateEntity(T entity);

	void deleteEntity(T entity);

	T getEntityById(Object id);

}
