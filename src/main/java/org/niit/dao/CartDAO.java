package org.niit.dao;

import java.util.List;

import org.niit.model.Cart;

import org.springframework.stereotype.Repository;

@Repository
public interface CartDAO {
	
	public List<Cart> list();	

	public void saveOrUpdate(Cart cart);

	public void delete(int cartid);

}
