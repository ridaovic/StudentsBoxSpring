package controller;


import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import org.springframework.web.servlet.ModelAndView;

import service.AdministrateurManager;
import service.DocumentManager;
import service.ReclamationManager;
import test.Lien;

import com.mysql.jdbc.log.Log;

import entity.AdministrateurEntity;
import entity.ReclamationEntity;

@Controller
@RequestMapping("/services")
public class ServicesController {
	
	@Autowired
	private AdministrateurManager administrateurManager;
	
	@Autowired
	private ReclamationManager reclamayionManager;

	@Autowired
	private DocumentManager documentManager;
	 
	 

	@RequestMapping(value = "user/{id}", method = RequestMethod.GET)
	 public @ResponseBody AdministrateurEntity getUser(@PathVariable Integer id) {
	   AdministrateurEntity a=administrateurManager.getAdministrateurById(id);
	  return a;
	 }
	
	
	@RequestMapping(value = "users" , method = RequestMethod.GET)
	 public  @ResponseBody  List<AdministrateurEntity> getAllUsers() {
	  List<AdministrateurEntity> users=administrateurManager.getAllAdministrateurs();
	  return users;
	 }
	
	@RequestMapping(value = "xxx" , method = RequestMethod.GET)
	 public  @ResponseBody  List<AdministrateurEntity> getAllUserss() {
	  List<AdministrateurEntity> userss=administrateurManager.getAllAdministrateurs();
	  return userss;
	 }
	
	
//	@RequestMapping(value = "reclamations" , method = RequestMethod.GET)
//	 public  @ResponseBody  List<ReclamationEntity> getAllReclamations() {
//	  List<ReclamationEntity> reclamations=reclamayionManager.getAllReclamations();
//	  return reclamations;
//	 }
	
	


	 
	
}
