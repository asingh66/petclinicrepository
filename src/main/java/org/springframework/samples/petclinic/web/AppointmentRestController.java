package org.springframework.samples.petclinic.web;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.samples.petclinic.model.Appointment;
import org.springframework.samples.petclinic.model.AppointmentXML;
import org.springframework.samples.petclinic.service.AppointmentService;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class AppointmentRestController {

	@Autowired
	AppointmentService as;
	
	@RequestMapping(value = "/appointment/{id}", method = RequestMethod.GET, produces = "application/json")
	@ResponseBody
	public AppointmentXML getAppointment(@PathVariable int id) {
		return as.getAppointment(id);
		
		
	}
}
