package com.where2park.view.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.where2park.biz.wishList.WishListService;
import com.where2park.biz.wishList.WishVO;
import com.where2park.biz.wishList.impl.WishListDAOMybatis;

@Controller
public class WishListController {
	
	@Autowired
	private WishListService wishListService;
	
	@Autowired
	HttpSession session;
	
	@Resource(name="wishListDAO")
	private WishListDAOMybatis wishListDAO;
	
	public WishListController() {
		System.out.println("⇒ Wish List Controller");
	}
	
	
	@RequestMapping("/wish_list.do")
	public String getWishList(WishVO vo, Model model) {
		System.out.println(wishListService.getWishList(vo)+"찜 목록 출력");
		vo.setUser_id((int)session.getAttribute("userId"));
		model.addAttribute("wishList", wishListService.getWishList(vo));
		return "wishlist/wish_list.jsp";
	}
	
	@RequestMapping("/insert_wish.do")
	public String insertWish(WishVO vo) {
		System.out.println("새 찜 추가");
		vo.setUser_id((int)session.getAttribute("userId"));
		wishListService.insertWish(vo);
		return "/wish_list.do";
	}
	
	@RequestMapping("/delete_wish.do")
	public String deleteWish(WishVO vo, Model model) {
		System.out.println("찜 삭제");
		wishListService.deleteWish(vo);
		return "/wish_list.do";
	}
	
	// I don't need update! ♥ ;)
}
