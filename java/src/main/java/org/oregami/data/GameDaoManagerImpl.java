package org.oregami.data;

import java.util.List;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;

import org.oregami.entities.Game;
import org.springframework.stereotype.Component;

@Component
public class GameDaoManagerImpl extends AbstractDaoManager<Game> implements GameDaoManager {

	@Override
	public Class<Game> getEntityClass() {
		return Game.class;
	}

	@Override
	public List<Game> getAllGames() {
		CriteriaQuery<Game> query = entityManager.getCriteriaBuilder().createQuery(Game.class);
		query.select(query.from(Game.class));

		return entityManager.createQuery(query).getResultList();
	}

	@Override
	public Integer countAllGames() {
		CriteriaBuilder criteriaBuilder = entityManager.getCriteriaBuilder();
		CriteriaQuery<Long> query = criteriaBuilder.createQuery(Long.class);
		query.select(criteriaBuilder.count(query.from(Game.class)));

		return entityManager.createQuery(query).getSingleResult().intValue();
	}

}
