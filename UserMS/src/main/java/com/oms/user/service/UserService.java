package com.oms.user.service;

import java.util.List;

import com.oms.user.dto.BuyerDTO;
import com.oms.user.dto.CartDTO;
import com.oms.user.dto.SellerDTO;
import com.oms.user.exception.UserMsException;

public interface UserService {

	public Integer buyerRegistration(BuyerDTO buyerDTO) throws UserMsException;
	
	public Integer sellerRegistration(SellerDTO sellerDTO) throws UserMsException;
	
	public String buyerLogin(String email, String password) throws UserMsException;
	
	public String sellerLogin(String email, String password) throws UserMsException;
	
	public String deleteBuyer(Integer id);
	
	public String deleteSeller(Integer id);
	
	public String wishlistService(Integer prodId,Integer buyerId);
	
	public String cartService(Integer prodId, Integer buyerId, Integer quantity);
	
	public List<CartDTO> getCartProducts(Integer id) throws UserMsException;
	
	public String removeFromCart(Integer buyerId, Integer prodId) throws UserMsException;
	
	public String updateRewardPoint(Integer buyerId, Integer rewPoints) throws UserMsException;
	
}
