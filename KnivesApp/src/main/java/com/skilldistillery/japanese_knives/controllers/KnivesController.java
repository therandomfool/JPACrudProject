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

	@RequestMapping(path = { "/", "home.do" })
	private String home(Model model) {
		return "index";
	}

// Basically here the integer is coming in as an integer but delete is read as a string
	@RequestMapping(path = "goIdKnives.do", method = RequestMethod.GET)
	public String findKnives(@RequestParam(name = "kid") Integer kid, Model model) {

		Knives k = dao.findById(kid);
		model.addAttribute("knives", k);
		return "showKnives";

	}

	// KNIVES BY all list of knives
	@RequestMapping(path = "goToShow.do", method = RequestMethod.GET)
	public ModelAndView findKnives() {
		List<Knives> knives = dao.findKnives();
		ModelAndView mv = new ModelAndView();
		mv.addObject("knives", knives);
		mv.setViewName("showKnives");
		return mv;
	}

	@RequestMapping(path = "knivesByKeyword.do", params = "keyword")
	public ModelAndView findKnives(String keyword) {
		ModelAndView mv = new ModelAndView();
		List<Knives> results = dao.knivesByKeyword(keyword);
		mv.addObject("knives", results);
		mv.setViewName("keywordKnives");
		return mv;
	}

	@RequestMapping(path = "goToKeyword.do", method = RequestMethod.GET)
	public ModelAndView searchKnives() {
		ModelAndView mv = new ModelAndView();
//		this send to results page
		mv.setViewName("keywordKnives");
		return mv;
	}

	@RequestMapping(path = "goToUpdate.do", method = RequestMethod.GET)
	public ModelAndView updateKnives() {
		ModelAndView mv = new ModelAndView();
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
	@RequestMapping(path = "goToCreate.do")
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

	@RequestMapping(path = "goToDelete.do", method = RequestMethod.GET)
	public ModelAndView takeToDeleteForm(int id) {
		ModelAndView mv = new ModelAndView();
		Knives toDelete = dao.findById(id);
		mv.addObject("knives", toDelete);
		mv.setViewName("deleteKnives");
		return mv;
	}

	@RequestMapping(path = "deleteKnives.do", method = RequestMethod.POST)
	public ModelAndView deleteKnives(int id) {
		ModelAndView mv = new ModelAndView();
		boolean result = dao.deleteKnives(id);
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