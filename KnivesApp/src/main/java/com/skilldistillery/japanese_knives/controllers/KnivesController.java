package com.skilldistillery.japanese_knives.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.skilldistillery.japanese_knives.data.KnivesDAO;
import com.skilldistillery.japanese_knives.entities.Knives;

@Controller
public class KnivesController {
	@Autowired
	private KnivesDAO dao;

	@RequestMapping(path = "getKnives.do")
	public String findKnives(@RequestParam Integer kid, Model model) {
		Knives k = dao.findById(kid);
		model.addAttribute("knives", k);
		return "knivesDetail.jsp";
	}

	@RequestMapping(path = {"/", "home.do"})
	private String home(Model model) {
		return "index.jsp";
	}

	

	

}