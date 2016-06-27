package org.springframework.samples.petclinic.web;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.samples.petclinic.model.Appointments;
import org.springframework.samples.petclinic.model.Owner;
import org.springframework.samples.petclinic.model.Pets;
import org.springframework.samples.petclinic.model.Vet;
import org.springframework.samples.petclinic.model.Vets;
import org.springframework.samples.petclinic.service.ClinicService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class AppointmentController {

	private final ClinicService clinicService;

	@Autowired
	public AppointmentController(ClinicService clinicService) {
		this.clinicService = clinicService;
	}

	@RequestMapping(value = "/appointment", method = RequestMethod.GET)
	public Map<String, Object> returnOwnerAndVet(Map<String, Object> model) {
		// TODO: Call appopriate service layer
		// model.put("owner", this.clinicService.findOwners());
		Vets vets = new Vets();
		vets.getVetList().addAll(this.clinicService.findVets());
		model.put("vets", vets);

		return model;

	}

	@RequestMapping(value = "/appointment", method = RequestMethod.POST)
	public String createAppointment(Map<String, Object> model, Vet vet) {
		// TODO: Call appropriate Service Layer
		// model.addAttribute("availableAppointments",
		// clinicService.getAvailableAppointment(vet));
		// clinicService.createAppointment(appointment);
		return null;

	}

	@RequestMapping("/owners/{ownerId}/pet")
	public @ResponseBody Pets showResourcesPetList(@PathVariable("ownerId") int ownerId) {
		Pets pets = new Pets();
		// TODO: Call Service Layer
		//pets.getPetList().addAll(this.clinicService.findPets(ownerId));
		
		return pets;
	}

	@RequestMapping("/vets/{vetId}/appointment")
	public @ResponseBody Appointments showResourcesAppointmentList(@PathVariable("vetId") int vetId) {
		Appointments appointments = new Appointments();
		// TODO: Call Service Layer
		//appointments.getAppointmentList().addAll(this.clinicService.findAppointment(vetId));
		
		return appointments;
	}
	
	
}
