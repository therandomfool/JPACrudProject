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
		return "knivesDetail.";
	}

	@RequestMapping(path = { "/", "home.do" })
	private String home(Model model) {
		return "index";
	}

	@RequestMapping(path = "knivesByKeyword.do", params = "keyword")
	public ModelAndView findKnives(String keyword) {
		ModelAndView mv = new ModelAndView();
		List<Knives> results = dao.knivesByKeyword(keyword);
		mv.addObject("knives", results);
		mv.setViewName("keywordResults");
		return mv;
	}
	
	@RequestMapping(path="goToKeyword.do", method = RequestMethod.GET)
	public ModelAndView searchKnives() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("keywordKnives");
		return mv;
	}

	@RequestMapping(path = "updateKnives.do", params = "kid", method = RequestMethod.GET)
	public ModelAndView updateKnives(int kid) {
		ModelAndView mv = new ModelAndView();
		Knives knivesUpdate = dao.updateKnives(kid);
		mv.addObject("knives", knivesUpdate);
		mv.setViewName("updateKnives");
		return mv;
	}

//	fix routing
	@RequestMapping(path = "updateKnives.do", params = "kid")
	public ModelAndView updateKnives(int kid, Knives knives) {
		ModelAndView mv = new ModelAndView();
		Knives knivesUpdate = dao.updateKnives(kid);
		mv.addObject("knives", knivesUpdate);
		mv.setViewName("updateKnives");
		return mv;
	}

//	to form?
	@RequestMapping(path = "createKnives.do")
	public String createKnives() {
		return "createKnives";
	}

	@RequestMapping(path = "createKnives.do", method = RequestMethod.POST)
	public ModelAndView createKnives(Knives knives) {
		ModelAndView mv = new ModelAndView();
		Knives kn = dao.createKnives(knives);
		mv.addObject("knives", kn);
		mv.setViewName("createKnives");
		return mv;
	}

	@RequestMapping(path = "deleteKnives.do", params = "kid", method = RequestMethod.GET)
	public ModelAndView takeToDeleteForm(int kid) {
		ModelAndView mv = new ModelAndView();
		Knives toDelete = dao.findById(kid);
		mv.addObject("knives", toDelete);
		mv.setViewName("deleteKnives");
		return mv;
	}

	@RequestMapping(path = "deleteKnives.do", method = RequestMethod.POST)
	public ModelAndView deleteKnives(int kid) {
		ModelAndView mv = new ModelAndView();
		boolean result = dao.deleteKnives(kid);
		if (result != true) {
			String knifeError = "UNSUCCESSFULL DELETION.";
			mv.addObject("knifeError", knifeError);
		} else {
			String knifeSuccess = "DELETION SUCCESSFULL";
			mv.addObject("knifeSuccess", knifeSuccess);
		}
		mv.setViewName("deleteKnives");
		return mv;
	}


}