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
import service.PlaintManager;
import service.ReclamationManager;
import service.ReservationManager;
import test.Lien;

import com.mysql.jdbc.log.Log;

import entity.AdministrateurEntity;
import entity.PlaintEntity;
import entity.ReclamationEntity;
import entity.ReservationEntity;

@Controller
@RequestMapping("/services")
public class ServicesController {
	
	@Autowired
	private AdministrateurManager administrateurManager;
	
	@Autowired
	private ReclamationManager reclamationManager;

	@Autowired
	private DocumentManager documentManager;
	
	@Autowired
	private PlaintManager plaintManager;
	 
	
	@Autowired
	private ReservationManager reservationManager;
	 

	
	
	@RequestMapping(value = "users" , method = RequestMethod.GET)
	 public  @ResponseBody  List<AdministrateurEntity> getAllUsers() {
	  List<AdministrateurEntity> users=administrateurManager.getAllAdministrateurs();
	  return users;
	 }
	
	@RequestMapping(value = "user/{id}", method = RequestMethod.GET)
	 public @ResponseBody AdministrateurEntity getUser(@PathVariable Integer id) {
	   AdministrateurEntity a=administrateurManager.getAdministrateurById(id);
	  return a;
	 }
	
	
	
	//------------------- Reclamation ------------------------------------------------
	

	
	@RequestMapping(value = "reclamations" , method = RequestMethod.GET)
	 public  @ResponseBody  List<ReclamationEntity> getAllReclamations() {
	  List<ReclamationEntity> reclamations=reclamationManager.getAllReclamations();
	  return reclamations;
	 }
	
	
	@RequestMapping(value = "reclamation/{id}", method = RequestMethod.GET)
	 public @ResponseBody ReclamationEntity getReclamation(@PathVariable Integer id) {
		ReclamationEntity r= reclamationManager.getReclamationById(id);
	  return r;
	 }
	
	
	
	//------------------- Plaint ------------------------------------------------
	
	@RequestMapping(value = "plaints" , method = RequestMethod.GET)
	 public  @ResponseBody  List<PlaintEntity> getAllPlaints() {
	  List<PlaintEntity> plaints=plaintManager.getAllPlaints();
	  return plaints;
	 }
	
	
	@RequestMapping(value = "plaint/{id}", method = RequestMethod.GET)
	 public @ResponseBody PlaintEntity getPlaint(@PathVariable Integer id) {
		PlaintEntity p=plaintManager.getPlaintById(id);
	  return p;
	 }
	
	
	//------------------- Reservation ------------------------------------------------
	
	
	@RequestMapping(value = "reservations" , method = RequestMethod.GET)
	 public  @ResponseBody  List<ReservationEntity> getAllReservations() {
	  List<ReservationEntity> reservations=reservationManager.getAllReservations();
	  return reservations;
	 }
	
	@RequestMapping(value = "reservation/{id}", method = RequestMethod.GET)
	 public @ResponseBody ReservationEntity getReservation(@PathVariable Integer id) {
		ReservationEntity r=reservationManager.getReservationById(id);
	  return r;
	 }


	 
	
}
