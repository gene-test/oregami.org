package org.oregami.data;

import org.oregami.entities.BaseEntity;

public interface BasicDaoManager<T extends BaseEntity> {

	public void saveEntity(T entity);

	public void updateEntity(T entity);

	public void deleteEntity(T entity);

	public T getEntityById(Integer id);

}
