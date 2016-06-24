package org.springframework.samples.petclinic.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.samples.petclinic.service.AppointmentService;
import org.springframework.samples.petclinic.service.ClinicService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/appointments/{appointmentId}")
public class AppointmentContoller {

	
	 private final ClinicService clinicService;
	 private final AppointmentService appointmentService;

	    @Autowired
	    public AppointmentContoller(ClinicService clinicService,AppointmentService appointmentService) {
	        this.clinicService = clinicService;
	        this.appointmentService = appointmentService;
	    }
	    
	    
}
