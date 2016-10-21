package org.niit.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.niit.model.Cart;
import org.niit.model.Category;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository("cartDAO")
public class CartDAOImpl implements CartDAO {
	@Autowired
	private SessionFactory sessionFactory;


	public CartDAOImpl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Transactional
	public List<Cart> list() {
		
		List<Cart> listCart = (List<Cart>) 
		          sessionFactory.getCurrentSession()
				.createCriteria(Cart.class)
				.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();

		return listCart;
	}

	@Transactional
	public void saveOrUpdate(Cart cart) {
		sessionFactory.getCurrentSession().saveOrUpdate(cart);
	}

	@Transactional
	public void delete(int cartid) {
		Cart CartToDelete = new Cart();
		CartToDelete.setCartid(cartid);
		sessionFactory.getCurrentSession().delete(CartToDelete);
	}


}
