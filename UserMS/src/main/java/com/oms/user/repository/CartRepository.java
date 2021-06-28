package com.oms.user.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.oms.user.entity.Cart;
import com.oms.user.utility.CustomPK;

public interface CartRepository extends CrudRepository<Cart, CustomPK> {
	
	
	public List<Cart> findByCustomPKBuyerId(Integer id); 
	
	public void deleteByCustomPKBuyerIdAndCustomPKProdId(Integer buyId,Integer prodId);
	
	public Cart findByCustomPKBuyerIdAndCustomPKProdId(Integer buyId,Integer ProdId);

}
